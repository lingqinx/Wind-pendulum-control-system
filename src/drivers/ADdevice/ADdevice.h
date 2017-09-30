/*
************************************************************************
*                北京邮电大学 K60 学习例程
* 文件名 :[ADdevice.h]
* 描  述 ：AD设备 函数定义
* 设计改进：依米
* 说  明 ：AD设备 函数定义
          1 - 这里列基本列出了所有可以AD口，共2路，同学可以根据需要选用
          2 - 并不是所有IO口都可以用作IO，请不需要随意使用以下之外的IO
          3 - 如果AD不够用，可以自己查看手册或与我联系
***********************************************************************
*/

#ifndef __ADDEVICE_H__
#define __ADDEVICE_H__
#include "common.h"
#include "adc.h"


#define AD_TIMES      50         //个人测试 在48Mbus下，AD转换一个次不到7us
                                 //所以这里建议进行50次采样求平均   //依米  20
#define AD_TIMES_L    100
#define ADBITS        ADC_12bit  //AD转换精度
#define ADBITS_L      ADC_10bit
/***************ENC 03*******************************************/
#define ENC_AD        ADC1
#define ENC_X_CH      SE7a             //垂直方向陀螺仪端口 PE3
//依米 #define ENC_Y_CH      SE5a      //水平方向陀螺仪端口 PE1
/***************加速度计*******************************************/
#define ACCER_AD        ADC1
#define ACCER_Z_CH      SE6a      //PE2

#define GET_ADVAL(adcn,ch)  ad_ave(adcn,ch,ADBITS,AD_TIMES)
void ADdevice_init();
u16 Get_ADval(ADCn adcn,ADC_Ch ch);
u16 Get_ADval_L(ADCn adcn,ADC_Ch ch);


#endif