
/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[DIPswitch.h] 
* 描  述 ：拨码开关
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：拨码开关
***********************************************************************
*/
#ifndef __DIPSWITCH_H__
#define __DIPSWITCH_H__

#include "common.h"
#include "gpio.h"
#include "uart.h"


//DIPVAL  定义拨码开关的值，举个例子
//如果 当前拨拨码开关当前向上为1，向下为0  那么把DIPVAL取反后
//就变为向上为0 向下为1
#define DIPVAL 0
//#define DIPVAL 1


//配置开发板的拨码开关硬件
#define   DIPswitch_PORT      PORTA     //拨码开关所在的端口
typedef enum DIPn
{
  DIP0    =      14,              //对应的引脚号
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