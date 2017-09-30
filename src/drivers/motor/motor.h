/*
************************************************************************
*                北京邮电大学 K60 学习例程
* 文件名 :[motor.h]
* 描  述 ：电机机驱动函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：电机机驱动函数
***********************************************************************
*/
#ifndef __MOTOR_H__
#define __MOTOR_H__

#define MOTOR_DOUBLE 1   //为光电组两路控制预留

#include "common.h"
#include "ftm.h"
#include "global.h"

// 我改动这里！！先让速度变小来测试,原为10000，现改动为2000，2014-2-27，肥叉烧.
 #define MOTOR_MAX    9600
 #define MOTOR_MIN    -9600



#define  MOTOR_FTMN       FTM0
#define  MOTOR_FTMCH0     CH0           //PTC1
#define  MOTOR_FTMCH1     CH1           //PTC2

#define  MOTOR_FREQ 16000           //电机频率   16k
#define  MOTOR_INIT_VAL 5000           //电机初始值，精度1/10000  即5000/10000 50%


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