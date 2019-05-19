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
#include <WiFiConfig.h>
#include <DNSServer.h>

//
#include <ESP8266mDNS.h>
#include <ArduinoOTA.h>

//
#include <RecurringTask.h>
#include <WiFiConfig.h>

#include "LedMatrixDisplay.h"

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

//
ConfigManager configManager;

struct Config
{

} config;

//
const char *deviceName = "Matrix Clock v3";

// Time zone
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

// NTP
const char *ntpServer = "europe.pool.ntp.org";
const int ntpIntervalShort = 60;         // short interval while RTC clock are incorrect
const int ntpIntervalLong = 60 * 60 * 6; // long interval while RTC clock are correct

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, ntpServer, ntpIntervalShort, ntpIntervalLong);

// RTC clock DS3231
RtcDS3231<TwoWire> Rtc(Wire);
const unsigned char pinInterrupt = 16;
volatile int rtcSquareCouter = 0;

int intensity = 0;
int targetIntensity = 0;

bool dots = false;
bool ota = false;

/**
 * @brief RTC Square wave interrupt - 1024Hz
 *
 */
void onSquareWave()
{
  rtcSquareCouter = (rtcSquareCouter + 1) % 1024;
}

/**
 * @brief
 *
 * @param val
 * @return char
 */
char digit(int val)
{
  return '0' + val;
}

void setup()
{
  Serial.begin(115200);
  delay(10);
  Serial.println('\n');

  //
  display.init();
  display.setIntensity(2);
  display.clear();
  const int textWidth = display.getTextWidth((const char *)"Hello!");
  display.drawText((display.width - textWidth) / 2, 0, (char *)"Hello!");
  display.commit();

  //
  configManager.setAPName(deviceName);
  configManager.begin(config);

  //
  timeClient.begin();

  // Init RTC
  Rtc.Begin();
  Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeClock);
  Rtc.SetSquareWavePinClockFrequency(DS3231SquareWaveClock_1kHz);

  // //
  // pinMode(pinInterrupt, INPUT_PULLUP);
  // attachInterrupt(digitalPinToInterrupt(pinInterrupt), onSquareWave, FALLING);

  //
  MDNS.begin("matrix-clock-3");

  // Over-the-Air update
  ArduinoOTA.onStart([]() {
    display.clear();
    display.drawChar(1, 0, '*');
    display.commit();
  });

  ArduinoOTA.onEnd([]() {
    display.clear();
    display.drawText(1, 0, "*...");
    display.commit();
  });

  ArduinoOTA.begin();
}

/**
 * @brief
 *
 * @param x
 * @param y
 * @param local
 * @param dots
 */
void drawTime(const int x, const int y, const time_t local, bool dots)
{
  int h = hour(local);
  int m = minute(local);
  int s = second(local);
  int i = x;

  // draw time
  if (h >= 10)
  {
    display.drawChar(i, y, digit(h / 10));
  }
  i += 6;

  display.drawChar(i, y, digit(h % 10));
  i += 6;

  // draw dots
  if (dots)
  {
    display.drawChar(i, y, ':');
  }
  i += 3;

  //
  display.drawChar(i, y, digit(m / 10));
  i += 6;
  display.drawChar(i, y, digit(m % 10));
  i += 6;
}

/**
 * @brief
 *
 */
void loop()
{
  //
  configManager.loop();

  //
  timeClient.update();

  //
  ArduinoOTA.handle();

  //
  RecurringTask::interval(500, []() {
    dots = !dots;
  });

  // display update
  RecurringTask::interval(50, []() {
    // Clear display
    display.clear();

    //
    if (!Rtc.IsDateTimeValid())
    {
      Serial.println("RTC lost confidence in the DateTime!");

      if (dots)
      {
        display.drawText(7, 0, "--:--");
      }
      else
      {
        display.drawText(7, 0, "  :  ");
      }

      if (WiFi.status() != WL_CONNECTED)
      {
        // not connected
        Serial.println("Connecting to WiFi...");
      }
      else
      {
        if (timeClient.forceUpdate())
        {
          time_t now = timeClient.getEpochTime();

          Serial.print("Got NTP time: ");
          Serial.println(timeClient.getFormattedTime());

          // update RTC time
          RtcDateTime timeNow = RtcDateTime(year(now), month(now), day(now), hour(now), minute(now), second(now));
          Rtc.SetDateTime(timeNow);
        }
      }
    }
    else
    {
      // get RTC time
      RtcDateTime utc = Rtc.GetDateTime();

      // convert UTC time to local
      time_t local = tzBerlin.toLocal(utc.Epoch32Time());

      drawTime(7, 0, local, dots);
    }

    //
    display.commit();
  });

  // change brightness
  RecurringTask::interval(500, []() {
    targetIntensity = (analogRead(A0) * 15) / 1024;

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
  });

  delay(1);
}