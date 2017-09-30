/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����
* �ļ��� :[ADdevice.h]
* ��  �� ��AD�豸 ��������
* ��ƸĽ�������
* ˵  �� ��AD�豸 ��������
          1 - �����л����г������п���AD�ڣ���2·��ͬѧ���Ը�����Ҫѡ��
          2 - ����������IO�ڶ���������IO���벻��Ҫ����ʹ������֮���IO
          3 - ���AD�����ã������Լ��鿴�ֲ��������ϵ
***********************************************************************
*/

#ifndef __ADDEVICE_H__
#define __ADDEVICE_H__
#include "common.h"
#include "adc.h"


#define AD_TIMES      50         //���˲��� ��48Mbus�£�ADת��һ���β���7us
                                 //�������ｨ�����50�β�����ƽ��   //����  20
#define AD_TIMES_L    100
#define ADBITS        ADC_12bit  //ADת������
#define ADBITS_L      ADC_10bit
/***************ENC 03*******************************************/
#define ENC_AD        ADC1
#define ENC_X_CH      SE7a             //��ֱ���������Ƕ˿� PE3
//���� #define ENC_Y_CH      SE5a      //ˮƽ���������Ƕ˿� PE1
/***************���ٶȼ�*******************************************/
#define ACCER_AD        ADC1
#define ACCER_Z_CH      SE6a      //PE2

#define GET_ADVAL(adcn,ch)  ad_ave(adcn,ch,ADBITS,AD_TIMES)
void ADdevice_init();
u16 Get_ADval(ADCn adcn,ADC_Ch ch);
u16 Get_ADval_L(ADCn adcn,ADC_Ch ch);


#endif