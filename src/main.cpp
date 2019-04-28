#include <Arduino.h>

#include <RecurringTask.h>

#include <LedMatrixDisplay.h>

using namespace LedMatrixDisplay;

// matrix type definition
typedef Matrix<8, 8> TMatrix;

// matrix array definition
typedef MatrixArray<TMatrix, 5, 1> TMatrixArray;

// canvas definition
typedef Canvas<TMatrixArray> TCanvas;

// display definition
typedef DisplayColumnCathode<TCanvas, 16> TDisplay;

TDisplay display;

void setup()
{
    Serial.begin(115200);

    display.init();
    display.setIntensity(2);
    display.clear();
    display.commit();
}

void loop()
{
    static int i = 0;
    static int j = 0;

    display.clear();
    display.setPixel(i, (j / display.height));
    display.commit();

    i = (i + 1) % display.width;
    j = (j + 1) % (display.width * display.height);

    delay(50);
}