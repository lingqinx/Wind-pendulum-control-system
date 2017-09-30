//#define __IOSPI_H__
#ifndef __IOSPI_H__
#define __IOSPI_H__

#include "common.h"
#include "gpio.h"


//typedef unsigned char		byte;  /*  8 bits */
//typedef unsigned short int	word;  /* 16 bits */
/*
D0(SCLK)   
D1(MOSI)   
RST        
DC         
*/
/*
#define SPI_SCLK    PTB11_OUT//时钟脚，由MCU控制
#define SPI_MOSI    PTB10_OUT//主输出从输入数据脚，由MCU控制
#define SPI_RES     PTB9_OUT//模块复位管脚 
#define SPI_DC      PTB3_OUT//命令数据选择管脚

#define PORT_D0     PTB11
#define PORT_D1     PTB10
#define PORT_RES    PTB9
#define PORT_DC     PTB3
*/
#define SPI_SCLK    PTC12_OUT//时钟脚，由MCU控制
#define SPI_MOSI    PTC14_OUT//主输出从输入数据脚，由MCU控制
#define SPI_RES     PTC16_OUT//模块复位管脚 
#define SPI_DC      PTC18_OUT//命令数据选择管脚

#define PORT_D0     PTC12
#define PORT_D1     PTC14
#define PORT_RES    PTC16
#define PORT_DC     PTC18



extern void IOSPI_LCD_WrDat(byte data);
extern void IOSPI_LCD_WrCmd(byte cmd);
#endif