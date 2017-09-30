/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[steer.c] 
* 描  述 ：舵机驱动函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：舵机驱动函数
***********************************************************************
*/

#include "steer.h"
#include "global.h"
#include "math.h"


/********************************************************************
** 函数名称 : void steer_init() 
** 功能描述 : 设置舵机转向
** 入口     ：
** 出口     ：
** 说明     :  初始化PWM波及占空比
*********************************************************************/
void steer_init()         
{
    ASSERT_RST(STEER_INIT_VAL <= FTM_PRECISON,"舵机0最大值不能超过PWM精度值");        
    FTM_PWM_init(STEER_FTMN,STEER_FTMCH,STEER_FREQ,STEER_INIT_VAL); 
#if STEER_DOUBLE
    ASSERT_RST(STEER_INIT_VAL1 <= FTM_PRECISON,"舵机最大值不能超过PWM精度值");
    FTM_PWM_init(STEER_FTMN,STEER_FTMCH1,STEER_FREQ,STEER_INIT_VAL1); 
#endif
}

/********************************************************************
** 函数名称: void PWMSetSteer(int angle_pwm) 
** 功能描述: 设置舵机转向
** 入口：角度值
** 出口：
** 说明:  
*********************************************************************/
void PWMSetSteer(int angle_pwm)         
{
    //占空比不能超过上限（防止过压）
    //同时防止方向打死  
    //这个保护措施是必要的
  /* if(angle_pwm<STEER_MIDDLE)
   {
     int p=STEER_MIDDLE-angle_pwm;
     angle_pwm=STEER_MIDDLE-p*a1;
   }*/
    if(angle_pwm < STEER_RIGHT)
        
    {
      angle_pwm = STEER_RIGHT;
   
    }
    if(angle_pwm > STEER_LEFT)
    {
         angle_pwm = STEER_LEFT;
     
    }
    
     FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH,angle_pwm);
    if(PID_flag)
    {
     
    
      float angle_pp=angle_p*abs(STEER_MIDDLE-angle_pwm);
      float dev_angle=tan(angle_pp);
      int chasuzhi=wanted_speed*k_chashu_speed*dev_angle;
       
      
       
       if(1)//普通askman模型 外侧轮子加不上速度，以内侧轮子为中心  外侧轮子速度大于25 时 内侧减速
       {
         if(abs(STEER_MIDDLE-angle_pwm)<=sep)
         {
           wanted_speed_L=wanted_speed;
           wanted_speed_R=wanted_speed;
         }
         else
         {
             if((STEER_MIDDLE-angle_pwm)<=0)//good
            {
                wanted_speed_R=wanted_speed-chasuzhi;
                wanted_speed_L=wanted_speed+chasuzhi;
                if(wanted_speed_L-true_speed_L>bili&&(true_speed_L-wanted_speed_R<=wanted_speed/6))//内侧减速肯定能达到
                    wanted_speed_R=wanted_speed_R-(wanted_speed_L-true_speed_L)*integral_b;
                    
              
                if(wanted_speed_R<=2*wanted_speed/3)
                    wanted_speed_R=2*wanted_speed/3;
            }
             else
            {
                wanted_speed_L=wanted_speed-chasuzhi;
                wanted_speed_R=wanted_speed+chasuzhi;
                if(wanted_speed_R-true_speed_R>bili&&(true_speed_R-wanted_speed_L<=wanted_speed/6))//内侧减速肯定能达到
                    wanted_speed_L=wanted_speed_L-(wanted_speed_R-true_speed_R)*(integral_b+0.1);
                if(wanted_speed_L<=2*wanted_speed/3)
                    wanted_speed_L=2*wanted_speed/3;
            }
         }
       }
     
    }
 


}


/********************************************************************
** 函数名称: steerCtrl
** 功能描述: 速度控制算法
** 入口：
** 出口：
** 说明:  
*********************************************************************/
void steerCtrl()
{
    /*
    int angle_pwm;
    angle_pwm = 0;    //去除warning
    
    //自己的舵机控制算法
    
    
    PWMSetSteer(angle_pwm) ; 
    */ 
}


#if STEER_DOUBLE
void PWMSetSteer1(int angle_pwm)         
{
    //占空比不能超过上限（防止过压）
    //同时防止方向打死  
    //这个保护措施是必要的
    if(angle_pwm < STEER_RIGHT1)
         angle_pwm = STEER_RIGHT1;
    if(angle_pwm > STEER_LEFT1)
         angle_pwm = STEER_LEFT1;
    
    
    FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH1,angle_pwm);
}


/********************************************************************
** 函数名称: steerCtrl
** 功能描述: 速度控制算法
** 入口：
** 出口：
** 说明:  
*********************************************************************/
void steerCtrl1()
{
    /*
    int angle_pwm;
    angle_pwm = 0;    //去除warning
    
    //自己的舵机控制算法
    
    
    
    PWMSetSteer1(angle_pwm) ;  
    */
}

#endif
