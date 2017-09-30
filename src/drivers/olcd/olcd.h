#ifndef __OLCD_H__
#define __OLCD_H__

#include "common.h"

#define __IOSPI__

#ifndef __IOSPI__
#define __SPI__
#endif


#ifdef __IOSPI__
  #include "iospi.h"
  #define LCD_WrCmd IOSPI_LCD_WrCmd
  #define LCD_WrDat IOSPI_LCD_WrDat
#else
  #include "spi.h"
  #define LCD_WrCmd SPI_LCD_WrCmd
  #define LCD_WrDat SPI_LCD_WrDat
#endif

#define byte uint8
#define word uint16
//#define GPIO_PIN_MASK      0x1Fu    //0x1f=31,限制位数为0--31有效
//#define GPIO_PIN(x)        (((1)<<(x & GPIO_PIN_MASK)))  //把当前位置1


 void LCD_Init(void);
 void LCD_CLS(void);
 void LCD_P6x8Str(byte x,byte y,byte ch[]);
 void LCD_P8x16Str(byte x,byte y,byte ch[]);
 void LCD_P14x16Str(byte x,byte y,byte ch[]);
 void LCD_Print(byte x, byte y, byte ch[]);
 void LCD_PutPixel(byte x,byte y);
 void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif);
 void LED_ShowInt(byte x,byte y,int num);
 void Draw_BUPTLogo(byte x,byte gif);
 void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[]); 
 void LCD_Fill(byte dat);
 void LCDHead(void);
 void LCD_ShowInt(byte x,byte y,int num);
 void LCD_Set_Pos(byte x, byte y);
 void LCD_P6x8Str_xiaoshudian(byte x,byte y,byte ch[]);
 
 
 
#endif