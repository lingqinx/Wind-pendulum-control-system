/*
************************************************************************
*                北京邮电大学 K60 学习例程
* 文件名 :[motor.c]
* 描  述 ：电机驱动函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：电机驱动函数
***********************************************************************
*/

#include "motor.h"



/********************************************************************
** 函数名称: motor_init()
** 功能描述: 电机初始化
** 入口：角度值
** 出口：
** 说明:
*********************************************************************/
void motor_init()
{
    ASSERT_RST(abs(MOTOR_MAX) <= FTM_PRECISON,"最大值不能超过PWM精度值");
    ASSERT_RST(abs(MOTOR_MIN) <= FTM_PRECISON,"最小值不能超过PWM精度值");

    //初始化FTM0_CH0 CH1 CH2 CH3输出频率为 16kHZ,占空比为 50% 的PWM;
    FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH0,MOTOR_FREQ,MOTOR_INIT_VAL);
    FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH1,MOTOR_FREQ,MOTOR_INIT_VAL);
#if MOTOR_DOUBLE
    FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH2,MOTOR_FREQ,MOTOR_INIT_VAL);
    FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH3,MOTOR_FREQ,MOTOR_INIT_VAL);
#endif
}
#if !MOTOR_DOUBLE
/********************************************************************
** 函数名称: PWMSetMotor
** 功能描述: 设置速度
** 入口：速度
** 出口：
** 说明:
*********************************************************************/
void PWMSetMotor(s32 speed_pwm)
{
    if(speed_pwm < MOTOR_MIN)
    {
      speed_pwm = MOTOR_MIN;
    }
    if(speed_pwm > MOTOR_MAX)
    {
      speed_pwm = MOTOR_MAX;
    }

    if(speed_pwm > 0)
    {
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwm);
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
    }
    else
    {
       speed_pwm = -speed_pwm;
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwm);
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
    }
}

/********************************************************************
** 函数名称: motorCtrl
** 功能描述: 速度控制算法
** 入口：
** 出口：
** 说明:
*********************************************************************/
void motorCtrl()
{
    /***
  s32 speed_pwm;

    speed_pwm = 0;    //去除warning

    //自己的速度控制算法



    PWMSetMotor(speed_pwm);
  ***/
}

#endif


#if MOTOR_DOUBLE
/********************************************************************
** 函数名称: PWMSetMotor2
** 功能描述: 设置速度
** 入口：左右速度
** 出口：
** 说明:
*********************************************************************/
void PWMSetMotor2(s32 speed_pwmL,s32 speed_pwmR)
{
    if(speed_pwmL < MOTOR_MIN)
    {
      speed_pwmL = MOTOR_MIN;
    }
    if(speed_pwmL > MOTOR_MAX)
    {
      speed_pwmL = MOTOR_MAX;
    }

    if(speed_pwmR < MOTOR_MIN)
    {
      speed_pwmR = MOTOR_MIN;
    }
    if(speed_pwmR > MOTOR_MAX)
    {
      speed_pwmR = MOTOR_MAX;
    }

    if(speed_pwmL > 0)
    {
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwmL);
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
    }
    else
    {
       speed_pwmL = -speed_pwmL;
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwmL);
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
    }

    if(speed_pwmR > 0)
    {
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,(u32)speed_pwmR);
        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,0);
    }
    else
    {
       speed_pwmR = -speed_pwmR;
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,(u32)speed_pwmR);
       FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,0);
    }
}

/********************************************************************
** 函数名称: motorSpeedOut
** 功能描述: 速度控制算法
** 入口：
** 出口：
** 说明:
*********************************************************************/
/*void motorSpeedOut()
{
  s32 fLeftVal, fRightVal;

  fLeftVal = g_lLeftMotorOut;
  fRightVal = g_lRightMotorOut;
  
  if(fLeftVal > 0) 			
    fLeftVal += MOTOR_OUT_DEAD_VAL_LEFT_FORWARD;
  else if(fLeftVal < 0) 		
    fLeftVal -= MOTOR_OUT_DEAD_VAL_LEFT_BACKWARD;
  if(fRightVal > 0)			
    fRightVal += MOTOR_OUT_DEAD_VAL_RIGHT_FORWARD;
  else if(fRightVal < 0)		
    fRightVal -= MOTOR_OUT_DEAD_VAL_RIGHT_BACKWARD;

  if(fLeftVal > MOTOR_OUT_MAX)	
    fLeftVal = MOTOR_OUT_MAX;
  if(fLeftVal < MOTOR_OUT_MIN)	
    fLeftVal = MOTOR_OUT_MIN;
  if(fRightVal > MOTOR_OUT_MAX)	
    fRightVal = MOTOR_OUT_MAX;
  if(fRightVal < MOTOR_OUT_MIN)	
    fRightVal = MOTOR_OUT_MIN;

  PWMSetMotor2(fLeftVal, fRightVal);
}

/********************************************************************
** 函数名称: motorCtrl
** 功能描述: 速度控制算法
** 入口：
** 出口：
** 说明:
*********************************************************************/
/*void motorCtrl()
{
  float fLeft, fRight;

  fLeft = g_fAngleControlOut - g_fSpeedControlOut + g_fDirectionControlOut;
  fRight = g_fAngleControlOut - g_fSpeedControlOut- g_fDirectionControlOut; 


  // 看似控制速度的系数，我需要改动它来进行调试.
//  fLeft *= 10000;//10000
//  fRight *= 10000;//10000
  
   fLeft *= 10000;//10000
  fRight *= 10000;//10000
  
  
  if(fLeft > MOTOR_OUT_MAX)
    fLeft = MOTOR_OUT_MAX;
  if(fLeft < MOTOR_OUT_MIN)	
    fLeft = MOTOR_OUT_MIN;
  if(fRight > MOTOR_OUT_MAX)
    fRight = MOTOR_OUT_MAX;
  if(fRight < MOTOR_OUT_MIN)
    fRight = MOTOR_OUT_MIN;

  g_lLeftMotorOut = (long int)fLeft;
  g_lRightMotorOut = (long int)fRight;
  
  motorSpeedOut();
 
}*/



#endif



