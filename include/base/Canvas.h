#pragma once

#include "base/MatrixArray.h"

#include "font.h"

namespace LedMatrixDisplay
{

  /**
   * @brief Test alignment
   *
   */
  enum TextAlign
  {
    left,
    leftEnd,
    right,
    rightEnd,
    center
  };

  /**
   * @brief Canvas objct providing basic graphics operations
   *
   * @tparam TMatrixArray defines geometry of the matrix array
   */
  template <class TMatrixArray>
  class Canvas : public TMatrixArray
  {
  protected:
    static const unsigned int frameBufferSize = TMatrixArray::width * TMatrixArray::arrayRows;

  protected:
    unsigned char frameBuffer[frameBufferSize] = {0};

  public:
    /**
     * @brief Clear the canvas
     *
     * Set all pixels to zero
     */
    void clear()
    {
      for (unsigned int i = 0; i < frameBufferSize; i++)
      {
        frameBuffer[i] = 0;
      }
    }

    /**
     * @brief Set single pixel
     *
     * @param x
     * @param y
     */
    void setPixel(const int x, const int y)
    {
      unsigned int row = y / TMatrixArray::matrixHeight;
      unsigned int bit = y % TMatrixArray::matrixHeight;

      frameBuffer[TMatrixArray::width * row + x] |= (1 << bit);
    }

    /**
     * @brief Clear single pixel
     *
     * @param x
     * @param y
     */
    void clearPixel(const int x, const int y)
    {
      unsigned int row = y / TMatrixArray::matrixHeight;
      unsigned int bit = y % TMatrixArray::matrixHeight;

      frameBuffer[TMatrixArray::width * row + x] &= ~(1 << bit);
    }

    /**
     * @brief Get current pixel value in the framebuffer
     *
     * @param x
     * @param y
     * @return true
     * @return false
     */
    bool getPixel(const int x, const int y)
    {
      unsigned int row = y / TMatrixArray::matrixHeight;
      unsigned int bit = y % TMatrixArray::matrixHeight;

      return (frameBuffer[TMatrixArray::width * row + x] & (1 << bit)) != 0;
    }

    /**
     * @brief Get the Text Width object
     *
     * @param str
     * @return unsigned int
     */
    unsigned int getTextWidth(const char *str) const
    {
      unsigned int width = 0;

      for (unsigned int i = 0; str[i] != '\0'; i++)
      {
        const unsigned int charWidth = charset_width[(uint8_t)str[i]];
        if (charWidth > 0)
        {
          width += charWidth + 1;
        }
      }

      return width > 0 ? width - 1 : 0;
    }

    /**
     * @brief Draw single character
     *
     * @param x
     * @param y
     * @param ch
     * @return unsigned int
     */
    unsigned int drawChar(const int x, const int y, const unsigned char ch)
    {
      // we draw only first half of ASCII charset
      if (ch > 127)
        return 0;

      unsigned char mask = (y >= 0) ? (0xFF << y) : (0xFF > y);

      // character width
      unsigned int char_width = charset_width[ch];
      if (char_width == 0)
        return 0;

      // character offset
      unsigned int char_offset = charset_offset[ch];

      // draw character
      for (unsigned int j = 0; j < char_width; j++)
      {
        unsigned int col = x + j;
        if (col < TMatrixArray::width)
        {
          // read column pixels from program memory
          unsigned char pixels = charset_char[char_offset + j];

          // shift pixels
          pixels = (y >= 0) ? (pixels << y) : (pixels >> (-y));

          // update canvas
          frameBuffer[col] &= ~(mask);
          frameBuffer[col] |= pixels;
        }
      }

      return char_width;
    }

    /**
     * @brief
     *
     * @param x
     * @param y
     * @param str
     */
    void drawText(const int x, const int y, const char *str)
    {
      // if is not visible, return
      if (y < -8 || y > 8)
        return;

      int x0 = x;

      for (unsigned int i = 0; str[i] != '\0' && x0 < (int)TMatrixArray::width; i++)
      {
        unsigned int char_width = drawChar(x0, y, str[i]);
        if (char_width > 0)
        {
          // position of the next char
          x0 += char_width + 1;
        }
      }
    }
  };

} // namespace LedMatrixDisplay
