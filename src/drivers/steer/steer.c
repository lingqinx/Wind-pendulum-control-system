/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[steer.c] 
* ��  �� �������������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �������������
***********************************************************************
*/

#include "steer.h"
#include "global.h"
#include "math.h"


/********************************************************************
** �������� : void steer_init() 
** �������� : ���ö��ת��
** ���     ��
** ����     ��
** ˵��     :  ��ʼ��PWM����ռ�ձ�
*********************************************************************/
void steer_init()         
{
    ASSERT_RST(STEER_INIT_VAL <= FTM_PRECISON,"���0���ֵ���ܳ���PWM����ֵ");        
    FTM_PWM_init(STEER_FTMN,STEER_FTMCH,STEER_FREQ,STEER_INIT_VAL); 
#if STEER_DOUBLE
    ASSERT_RST(STEER_INIT_VAL1 <= FTM_PRECISON,"������ֵ���ܳ���PWM����ֵ");
    FTM_PWM_init(STEER_FTMN,STEER_FTMCH1,STEER_FREQ,STEER_INIT_VAL1); 
#endif
}

/********************************************************************
** ��������: void PWMSetSteer(int angle_pwm) 
** ��������: ���ö��ת��
** ��ڣ��Ƕ�ֵ
** ���ڣ�
** ˵��:  
*********************************************************************/
void PWMSetSteer(int angle_pwm)         
{
    //ռ�ձȲ��ܳ������ޣ���ֹ��ѹ��
    //ͬʱ��ֹ�������  
    //���������ʩ�Ǳ�Ҫ��
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
       
      
       
       if(1)//��ͨaskmanģ�� ������ӼӲ����ٶȣ����ڲ�����Ϊ����  ��������ٶȴ���25 ʱ �ڲ����
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
                if(wanted_speed_L-true_speed_L>bili&&(true_speed_L-wanted_speed_R<=wanted_speed/6))//�ڲ���ٿ϶��ܴﵽ
                    wanted_speed_R=wanted_speed_R-(wanted_speed_L-true_speed_L)*integral_b;
                    
              
                if(wanted_speed_R<=2*wanted_speed/3)
                    wanted_speed_R=2*wanted_speed/3;
            }
             else
            {
                wanted_speed_L=wanted_speed-chasuzhi;
                wanted_speed_R=wanted_speed+chasuzhi;
                if(wanted_speed_R-true_speed_R>bili&&(true_speed_R-wanted_speed_L<=wanted_speed/6))//�ڲ���ٿ϶��ܴﵽ
                    wanted_speed_L=wanted_speed_L-(wanted_speed_R-true_speed_R)*(integral_b+0.1);
                if(wanted_speed_L<=2*wanted_speed/3)
                    wanted_speed_L=2*wanted_speed/3;
            }
         }
       }
     
    }
 


}


/********************************************************************
** ��������: steerCtrl
** ��������: �ٶȿ����㷨
** ��ڣ�
** ���ڣ�
** ˵��:  
*********************************************************************/
void steerCtrl()
{
    /*
    int angle_pwm;
    angle_pwm = 0;    //ȥ��warning
    
    //�Լ��Ķ�������㷨
    
    
    PWMSetSteer(angle_pwm) ; 
    */ 
}


#if STEER_DOUBLE
void PWMSetSteer1(int angle_pwm)         
{
    //ռ�ձȲ��ܳ������ޣ���ֹ��ѹ��
    //ͬʱ��ֹ�������  
    //���������ʩ�Ǳ�Ҫ��
    if(angle_pwm < STEER_RIGHT1)
         angle_pwm = STEER_RIGHT1;
    if(angle_pwm > STEER_LEFT1)
         angle_pwm = STEER_LEFT1;
    
    
    FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH1,angle_pwm);
}


/********************************************************************
** ��������: steerCtrl
** ��������: �ٶȿ����㷨
** ��ڣ�
** ���ڣ�
** ˵��:  
*********************************************************************/
void steerCtrl1()
{
    /*
    int angle_pwm;
    angle_pwm = 0;    //ȥ��warning
    
    //�Լ��Ķ�������㷨
    
    
    
    PWMSetSteer1(angle_pwm) ;  
    */
}

#endif
