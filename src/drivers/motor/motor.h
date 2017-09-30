/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����
* �ļ��� :[motor.h]
* ��  �� ���������������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ���������������
***********************************************************************
*/
#ifndef __MOTOR_H__
#define __MOTOR_H__

#define MOTOR_DOUBLE 1   //Ϊ�������·����Ԥ��

#include "common.h"
#include "ftm.h"
#include "global.h"

// �ҸĶ�����������ٶȱ�С������,ԭΪ10000���ָĶ�Ϊ2000��2014-2-27���ʲ���.
 #define MOTOR_MAX    9600
 #define MOTOR_MIN    -9600



#define  MOTOR_FTMN       FTM0
#define  MOTOR_FTMCH0     CH0           //PTC1
#define  MOTOR_FTMCH1     CH1           //PTC2

#define  MOTOR_FREQ 16000           //���Ƶ��   16k
#define  MOTOR_INIT_VAL 5000           //�����ʼֵ������1/10000  ��5000/10000 50%


void motor_init();

#if !MOTOR_DOUBLE
    void PWMSetMotor(s32 speed_pwm);
#endif

#if MOTOR_DOUBLE
    #define  MOTOR_FTMCH2     CH2           //PTC3
    #define  MOTOR_FTMCH3     CH3           //PTC4

    void PWMSetMotor2(s32 speed_pwmL,s32 speed_pwmR);
#endif

    void motorCtrl();
    void motorSpeedOut();
#endif