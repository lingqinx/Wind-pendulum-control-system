/*
************************************************************************
*                ��˼�������ܳ�����  ֱ����������                                       
* �ļ��� :[ioi2c.h] 
* ��  �� ��ģ��IIC
* ��  �� ��snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��
***********************************************************************
*/


#ifndef __IOI2C_H__
#define __IOI2C_H__

#define IOIIC
#include "common.h"
#include "gpio.h"
#include "global.h"

//MMA8451�˿�λ���壬���޸�
#ifdef IOIIC

#define SDA  PTB1_OUT    //IIC�����߶���
#define SDA_IN  PTB1_IN    //IIC�����߶���
#define SCL  PTB0_OUT    //IICʱ���߶���
#define SDADDR  DDRB1    //IIC�����߷�����
#define SCLDDR  DDRB0    //IICʱ���߷�����

#define IIC_IN  0
#define IIC_OUT 1

//SA0����ӵ�

     

#define ack 1      //��Ӧ��
#define no_ack 0   //��Ӧ��	 

//nopָ���������   ���ָ���ʱ��Ϊ���٣�
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
//��ֹͣλ SDA=0->1
void IIC_stop(void);
//************************************************
//��Ӧ��(����ack:SDA=0��no_ack:SDA=0)
void IIC_ack_main(byte ack_main);
//*************************************************
//�ֽڷ��ͳ���
//����c(����������Ҳ���ǵ�ַ)���������մ�Ӧ��
//�����Ǵ�Ӧ��λ
void send_byte(unsigned char c);
//**************************************************
//�ֽڽ��ճ���
//�����������������ݣ��˳���Ӧ���|��Ӧ����|IIC_ack_main()ʹ��
//return: uchar��1�ֽ�
unsigned char read_byte(void);
//***************************************************
//�����ӵ�ַ�������͵��ֽ�����
void send_to_byte(unsigned char ad_main,unsigned char c);
//***************************************************
//�����ӵ�ַ�������Ͷ��ֽ�����
void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);
//***************************************************
//�����ӵ�ַ���������ֽ�����
//function:������ַ���������ݴ��ڽ��ջ�������ǰ�ֽ�
void read_from_byte(unsigned char ad_main,unsigned char *buf);
//***************************************************
//�����ӵ�ַ����������ֽ�����
//function:
void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);

#endif    //#ifdef IOIIC

#ifdef SCCB

#define SCL     PTD8_OUT
#define SDA     PTD9_OUT
#define SDA_IN  PTD9_IN    //IIC�����߶���
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