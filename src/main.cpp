#include <Arduino.h>

//
#include <Time.h>
#include <TimeLib.h>

#include <Timezone.h>

//
#include <WiFiUdp.h>
#include <NTPClient.h>

//
#include <Wire.h>
#include <RtcDS3231.h>

//
#include <DNSServer.h>

//
#include <ESP8266mDNS.h>
#include <ArduinoOTA.h>

//
#include <RecurringTask.h>

#include "LedMatrixDisplay.h"

#include "config.h"

#define INTENSITY_MEASUREMENTS 40

//
using namespace LedMatrixDisplay;

// matrix type definition
typedef Matrix<8, 8> TMatrix;

// matrix array definition
typedef MatrixArray<TMatrix, 5, 1> TMatrixArray;

// canvas definition
typedef Canvas<TMatrixArray> TCanvas;

// display definition
typedef DisplayColumnCathode<TCanvas, 15> TDisplay;

TDisplay display;

// NTP
WiFiUDP ntpUDP;
const char *ntpServer = "pool.ntp.org";
NTPClient timeClient(ntpUDP, ntpServer);
const unsigned long ntpUpdateIntervalMillis = (3600 * 3) * 1000; // update every 3 hours

// RTC clock DS3231
// RTC keeps time in UTC!
RtcDS3231<TwoWire> rtcClock(Wire);

// Time zone Europe/Berlin
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone timezone(CEST, CET);

//
static int intensity = 2;
static int targetIntensity = 2;

/**
 * @param val
 * @return char
 */
inline char digit(int val)
{
  return '0' + val;
}

/**
 * @param str
 */
void printTextCentered(const char *str)
{
  const int textWidth = display.getTextWidth(str);
  const int textOffset = ((int)display.width - textWidth) / 2;
  display.drawText(textOffset, 0, str);
}

/**
 *
 */
void onOTAStart()
{
  display.setIntensity(2);
  display.clear();
  printTextCentered("*>...");
  display.commit();
}

/**
 *
 */
void onOTAEnd()
{
  display.clear();
  printTextCentered("Done");
  display.commit();
}

void setup()
{
  Serial.begin(115200);
  delay(100);
  Serial.println("\n\nLED Matrix Clock v3");

  // Init RTC
  rtcClock.Begin();

  //
  display.init();
  display.setIntensity(2);
  display.clear();
  printTextCentered("Hello");
  display.commit();

  //
  WiFi.mode(WIFI_STA);
  WiFi.setHostname(deviceName);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(1000);
  }
  Serial1.println("WiFi connected");

  //
  MDNS.begin(hostName);

  //
  timeClient.begin();
  timeClient.setUpdateInterval(ntpUpdateIntervalMillis);

  // Over-the-Air update
  ArduinoOTA.onStart([]()
                     { onOTAStart(); });
  ArduinoOTA.onEnd([]()
                   { onOTAEnd(); });
  ArduinoOTA.begin();
}

/**
 * @brief
 *
 * @param str
 * @param local
 * @param dots
 */
void sprintTimeShort(char *str, const time_t local, bool dots)
{
  int h = hour(local);
  int m = minute(local);
  // int s = second(local);
  unsigned int i = 0;

  // draw time
  if (h >= 10)
  {
    str[i++] = digit(h / 10);
  }
  str[i++] = digit(h % 10);

  str[i++] = dots ? ':' : ':';

  //
  str[i++] = digit(m / 10);
  str[i++] = digit(m % 10);

  str[i++] = 0;
}

void sprintTimeLong(char *str, const time_t local, bool dots)
{
  int h = hour(local);
  int m = minute(local);
  int s = second(local);

  unsigned int i = 0;

  // draw time
  if (h >= 10)
  {
    str[i++] = digit(h / 10);
  }
  str[i++] = digit(h % 10);

  str[i++] = ':';

  //
  str[i++] = digit(m / 10);
  str[i++] = digit(m % 10);

  str[i++] = ':';

  //
  str[i++] = digit(s / 10);
  str[i++] = digit(s % 10);

  str[i++] = 0;
}

/**
 * Update RTC time with NTP
 */
void ntpUpdateLoop()
{
  bool hasNtpUpdate = timeClient.update();

  // update if RTC time is not valid or required interval has passed
  if (rtcClock.IsDateTimeValid() || !hasNtpUpdate)
  {
    // no need to update
    return;
  }

  // get updated time
  time_t now = timeClient.getEpochTime();

  Serial.print("Got NTP time: ");
  Serial.println(timeClient.getFormattedTime());

  // update RTC time
  RtcDateTime timeNow = RtcDateTime(year(now), month(now), day(now), hour(now), minute(now), second(now));
  rtcClock.SetDateTime(timeNow);
}

/**
 * Update display
 */
void displayLoop(bool dots)
{
  // Clear display
  display.clear();

  //
  if (!rtcClock.IsDateTimeValid() || !timeClient.isTimeSet())
  {
    // blinking dashes
    printTextCentered(dots ? "--:--" : ":");
  }
  else
  {
    // get RTC time
    RtcDateTime utc = rtcClock.GetDateTime();

    // convert UTC time to local
    time_t local = timezone.toLocal(utc.Unix32Time());

    static char strTime[12] = {0};
    sprintTimeShort(strTime, local, dots);
    printTextCentered(strTime);
  }

  //
  display.commit();
}

/**
 * Calculate average ambient brightness over multiple measures
 */
void intencityMeasureLoop()
{
  static int measures[INTENSITY_MEASUREMENTS] = {0};
  static int currentMeasure = 0;

  measures[currentMeasure++] = (analogRead(A0) * 15) / 1024;

  currentMeasure = currentMeasure % INTENSITY_MEASUREMENTS;

  // calculate average
  int sum = 0;
  for (auto i = 0; i < INTENSITY_MEASUREMENTS; i++)
  {
    sum += measures[i];
  }
  targetIntensity = sum / INTENSITY_MEASUREMENTS;
}

/**
 * Update display intencity
 */
void intencityUpdateLoop()
{
  // change display intensity
  if (intensity < targetIntensity)
  {
    intensity += 1;
    display.setIntensity(intensity);
  }
  else if (intensity > targetIntensity)
  {
    intensity -= 1;
    display.setIntensity(intensity);
  }
}

/**
 *
 */
void loop()
{
  //
  static bool dots = false;

  //
  ArduinoOTA.handle();

  //
  RecurringTask::interval(500, []()
                          { dots = !dots; });

  // display update
  RecurringTask::interval(50, []()
                          { displayLoop(dots); });

  // change brightness
  RecurringTask::interval(50, []()
                          { intencityMeasureLoop(); });

  RecurringTask::interval(100, []()
                          { intencityUpdateLoop(); });

  RecurringTask::interval(1000, []()
                          { ntpUpdateLoop(); });

  delay(1);
}