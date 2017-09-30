/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[steer.h] 
* ��  �� �������������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �������������
***********************************************************************
*/
#ifndef __STEER_H__
#define __STEER_H__

#include "common.h"
#include "ftm.h"


//Ϊ˫���Ԥ��������ͷ��͵���������� 0
#define STEER_DOUBLE 0

#define STEER_LEFT      1634    //����ڽ�����  �����ֵ�����ڲ��Եģ���Ҹ����Լ��Ķ������
#define STEER_MIDDLE    1464    //����ڽ���ֵ
#define STEER_RIGHT     1294  //����ڽ��Ҽ��� 


#define  STEER_FTMN     FTM1
#define  STEER_FTMCH    CH1     //FTM1_CH0��ӦPTA12��
#define  STEER_FREQ     100    //���Ƶ��   ����һ��FTMģ��ֻ�����һ��Ƶ�ʣ�                               //�����������Ҳֻ����һ��Ƶ�� ����ͳһ100Hz
#define  STEER_INIT_VAL 1464   //�����ʼֵ������1/10000  ��1200/10000  = 12%


void steer_init();

void PWMSetSteer(int angle_pwm);

void steerCtrl();

#if STEER_DOUBLE
    #define STEER_LEFT1      5000     //����ڽ�����
    #define STEER_MIDDLE1    1410     //����ڽ���ֵ
    #define STEER_RIGHT1     200      //����ڽ��Ҽ���
    
    
    //#define  STEER_FTMN     FTM1   //�����������
    #define  STEER_FTMCH1    CH1     //FTM1_CH0��ӦPTA13��
    //#define  STEER_FREQ     100    //���Ƶ��   ����һ��FTMģ��ֻ�����һ��Ƶ�ʣ�                               //�����������Ҳֻ����һ��Ƶ�� ����ͳһ100Hz
    #define  STEER_INIT_VAL1 1200   //�����ʼֵ������1/10000  ��1200/10000  = 12%
    void PWMSetSteer1(int angle_pwm);
    void steerCtrl1();
#endif





#endif