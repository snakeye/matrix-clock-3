#include <Arduino.h>

#include <RecurringTask.h>

#include <Time.h>
#include <TimeLib.h>

#include <Timezone.h>

#include <NTPClient.h>

#include <Wire.h>
#include <RtcDS3231.h>

#include <WiFiConfig.h>
#include <DNSServer.h>

#include "LedMatrixDisplay.h"

using namespace LedMatrixDisplay;

// matrix type definition
typedef Matrix<8, 8> TMatrix;

// matrix array definition
typedef MatrixArray<TMatrix, 5, 1> TMatrixArray;

// canvas definition
typedef Canvas<TMatrixArray> TCanvas;

// display definition
typedef DisplayColumnCathode<TCanvas, 2> TDisplay;

TDisplay display;

// Time zone
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

// NTP
const char *ntpServer = "pool.ntp.org";
const int ntpIntervalShort = 60;         // short interval while RTC clock are incorrect
const int ntpIntervalLong = 60 * 60 * 6; // long interval while RTC clock are correct

// RTC clock DS3231
RtcDS3231<TwoWire> Rtc(Wire);
const unsigned char pinInterrupt = 16;
volatile int rtcSquareCouter = 0;

int intensity = 0;
int targetIntensity = 0;

/**
   RTC Square wave interrupt - 1024Hz
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

  targetIntensity = (analogRead(A0) * 15) / 1024;

  display.init();
  display.setIntensity(0);
  display.clear();
  display.drawText(7, 0, (char *)"  :  ");
  display.commit();

  // Init RTC
  Rtc.Begin();
  Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeClock);
  Rtc.SetSquareWavePinClockFrequency(DS3231SquareWaveClock_1kHz);

  //
  //pinMode(pinInterrupt, INPUT_PULLUP);
  //attachInterrupt(digitalPinToInterrupt(pinInterrupt), onSquareWave, FALLING);
}

void loop()
{
  RecurringTask::interval(50, []() {
    // Clear display
    display.clear();

    // //
    // if (!Rtc.IsDateTimeValid())
    // {
    //   if (WiFi.status() != WL_CONNECTED)
    //   {
    //     // not connected
    //     display.drawText(7, 0, "  :  ");
    //     Serial.println("Connecting to WiFi...");
    //   }
    //   else
    //   {
    //     // connected but time is incorrect
    //     display.drawText(7, 0, "--:--");
    //     Serial.println("RTC lost confidence in the DateTime!");
    //   }

    //   display.drawText();

    //   NTP.getTime();
    // }
    // else
    // {
    //   // get RTC time
    RtcDateTime utc = Rtc.GetDateTime();

    // convert UTC time to local
    time_t local = tzBerlin.toLocal(utc.Epoch32Time());

    int h = hour(local);
    int m = minute(local);
    bool dots = rtcSquareCouter < 512;

    // draw time
    if (h >= 10)
    {
      display.drawChar(7, 0, digit(h / 10));
    }
    display.drawChar(13, 0, digit(h % 10));

    // draw dots
    if (dots)
    {
      display.drawChar(19, 0, ':');
    }

    //
    display.drawChar(23, 0, digit(m / 10));
    display.drawChar(39, 0, digit(m % 10));
    // }

    //
    display.commit();
  });

  // change brightness
  RecurringTask::interval(100, []() {
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
}