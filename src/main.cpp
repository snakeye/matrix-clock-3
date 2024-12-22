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
const unsigned long ntpUpdateInterval = 86400;

// RTC clock DS3231
// RTC keeps time in UTC!
RtcDS3231<TwoWire> Rtc(Wire);

// Time zone
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

//
bool dots = false;

//
static int intensity = 2;
static int targetIntensity = 2;

/**
 * @brief
 *
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
  printTextCentered("*...");
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

  // Init RTC
  Rtc.Begin();

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

  //
  MDNS.begin(hostName);

  //
  timeClient.begin();

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
  static unsigned long lastUpdate = 0;
  unsigned long now = timeClient.getEpochTime();

  // update if RTC time is not valid or required interval has passed
  if ((lastUpdate != 0 && now < lastUpdate + ntpUpdateInterval) && Rtc.IsDateTimeValid())
  {
    // no need to update
    return;
  }

  if (!timeClient.forceUpdate())
    return;

  // get updated time
  now = timeClient.getEpochTime();

  // Serial.print("Got NTP time: ");
  // Serial.println(timeClient.getFormattedTime());

  // update RTC time
  RtcDateTime timeNow = RtcDateTime(year(now), month(now), day(now), hour(now), minute(now), second(now));
  Rtc.SetDateTime(timeNow);
}

/**
 * Update display
 */
void displayLoop()
{
  // Clear display
  display.clear();

  //
  if (!Rtc.IsDateTimeValid())
  {
    // blinking dashes
    printTextCentered(dots ? "--:--" : ":");
  }
  else
  {
    // get RTC time
    RtcDateTime utc = Rtc.GetDateTime();

    // convert UTC time to local
    time_t local = tzBerlin.toLocal(utc.Unix32Time());

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
  static int measures[10] = {0};
  static int currentMeasure = 0;

  measures[currentMeasure++] = (analogRead(A0) * 15) / 1024;

  currentMeasure = currentMeasure % 10;
  int sum = 0;
  for (int i = 0; i < 10; i++)
  {
    sum += measures[i];
  }

  targetIntensity = sum / 10;
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
  ArduinoOTA.handle();

  //
  RecurringTask::interval(500, []()
                          { dots = !dots; });

  // display update
  RecurringTask::interval(50, []()
                          { displayLoop(); });

  // change brightness
  RecurringTask::interval(50, []()
                          { intencityMeasureLoop(); });

  RecurringTask::interval(100, []()
                          { intencityUpdateLoop(); });

  RecurringTask::interval(1000, []()
                          { ntpUpdateLoop(); });

  delay(1);
}