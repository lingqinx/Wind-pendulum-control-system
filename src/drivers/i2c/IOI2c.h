/*
************************************************************************
*                飞思卡尔智能车程序  直立行走例程                                       
* 文件名 :[ioi2c.h] 
* 描  述 ：模拟IIC
* 设  计 ：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：
***********************************************************************
*/


#ifndef __IOI2C_H__
#define __IOI2C_H__

#define IOIIC
#include "common.h"
#include "gpio.h"
#include "global.h"

//MMA8451端口位定义，可修改
#ifdef IOIIC

#define SDA  PTB1_OUT    //IIC数据线定义
#define SDA_IN  PTB1_IN    //IIC数据线定义
#define SCL  PTB0_OUT    //IIC时钟线定义
#define SDADDR  DDRB1    //IIC数据线方向定义
#define SCLDDR  DDRB0    //IIC时钟线方向定义

#define IIC_IN  0
#define IIC_OUT 1

//SA0必须接地

     

#define ack 1      //主应答
#define no_ack 0   //从应答	 

//nop指令个数定义   这个指令的时间为多少？
#define ioi2cnops() {asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
    asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
    asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
    asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\
      asm("nop");asm("nop");asm("nop");}  



void IIC_start(void);

//************************************************
//送停止位 SDA=0->1
void IIC_stop(void);
//************************************************
//主应答(包含ack:SDA=0和no_ack:SDA=0)
void IIC_ack_main(byte ack_main);
//*************************************************
//字节发送程序
//发送c(可以是数据也可是地址)，送完后接收从应答
//不考虑从应答位
void send_byte(unsigned char c);
//**************************************************
//字节接收程序
//接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//return: uchar型1字节
unsigned char read_byte(void);
//***************************************************
//向无子地址器件发送单字节数据
void send_to_byte(unsigned char ad_main,unsigned char c);
//***************************************************
//向有子地址器件发送多字节数据
void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);
//***************************************************
//从无子地址器件读单字节数据
//function:器件地址，所读数据存在接收缓冲区当前字节
void read_from_byte(unsigned char ad_main,unsigned char *buf);
//***************************************************
//从有子地址器件读多个字节数据
//function:
void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);

#endif    //#ifdef IOIIC

#ifdef SCCB

#define SCL     PTD8_OUT
#define SDA     PTD9_OUT
#define SDA_IN  PTD9_IN    //IIC数据线定义
#define SDA_DR  DDRD9
#define SCCB_OUT  1
#define SCCB_IN  0

///*
void SCCB_Wait(void) ;
void SCCB_Start(void) ;
void SCCB_Stop(void);
void SCCB_SendAck(byte ack);
byte SCCB_SendByte(unsigned char bytedata) ;
unsigned char SCCB_ReceiveByte(void)  ;

void SCCB_ByteWrite(unsigned char device,unsigned char address,unsigned char bytedata);

unsigned char SCCB_ByteRead(unsigned char device,unsigned char address) ;
//*/
#endif


#endif