/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[iospi.c] 
* 描  述 ：IO口实现SPI
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：基本功能函数
***********************************************************************
*/
#include "iospi.h"

#define SPI_NOP asm("nop")
void IOSPI_LCD_WrDat(byte data)
{
    byte i=8;
    //LCD_CS=0;;
    SPI_DC = 1;
    SPI_NOP;
    SPI_SCLK = 0;
    SPI_NOP;  
    
    while(i--)
    {
        if(data&0x80)
          SPI_MOSI = 1;
        else
          SPI_MOSI = 0;
        
        SPI_SCLK = 1; 
        SPI_NOP;       
        SPI_SCLK = 0;  
        
        data<<=1;    
    }
    //LCD_CS=1;
}
void IOSPI_LCD_WrCmd(byte cmd)
{
    byte i=8;
    
    //LCD_CS=0;;
    SPI_DC = 0;
    SPI_SCLK = 0;
    SPI_NOP;
    
    while(i--)
    {
        if(cmd&0x80)
          SPI_MOSI = 1;
        else
          SPI_MOSI = 0;
        
        SPI_SCLK = 1;
        SPI_NOP;     
        SPI_SCLK = 0; 
        cmd<<=1;
    } 	
    //LCD_CS=1;
}