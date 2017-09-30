
/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[DIPswitch.h] 
* ��  �� �����뿪��
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �����뿪��
***********************************************************************
*/
#ifndef __DIPSWITCH_H__
#define __DIPSWITCH_H__

#include "common.h"
#include "gpio.h"
#include "uart.h"


//DIPVAL  ���岦�뿪�ص�ֵ���ٸ�����
//��� ��ǰ�����뿪�ص�ǰ����Ϊ1������Ϊ0  ��ô��DIPVALȡ����
//�ͱ�Ϊ����Ϊ0 ����Ϊ1
#define DIPVAL 0
//#define DIPVAL 1


//���ÿ�����Ĳ��뿪��Ӳ��
#define   DIPswitch_PORT      PORTA     //���뿪�����ڵĶ˿�
typedef enum DIPn
{
  DIP0    =      14,              //��Ӧ�����ź�
  DIP1    =      16,
  DIP2    =      17,
  DIP3    =      5
}DIPn;


#if DIPVAL == 0
  #define DIP_BIT0 GPIO_Get(DIPswitch_PORT,DIP0)
  #define DIP_BIT1 GPIO_Get(DIPswitch_PORT,DIP1)
  #define DIP_BIT2 GPIO_Get(DIPswitch_PORT,DIP2)
  #define DIP_BIT3 GPIO_Get(DIPswitch_PORT,DIP3)
#else
  #define DIP_BIT0 GPIO_Get(DIPswitch_PORT,DIP0)^0x01
  #define DIP_BIT1 GPIO_Get(DIPswitch_PORT,DIP1)^0x01
  #define DIP_BIT2 GPIO_Get(DIPswitch_PORT,DIP2)^0x01
  #define DIP_BIT3 GPIO_Get(DIPswitch_PORT,DIP3)^0x01
#endif

void DIPswitch_init(void);

u8 DIPswitch_val();

u8 DIPswitch_valbit(DIPn dipn);

u8 DIPswitch_ctrl(void);



#endif 