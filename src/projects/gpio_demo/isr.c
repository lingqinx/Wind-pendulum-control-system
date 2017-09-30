#include "common.h"
#include "include.h"
#include "math.h"
 
/**********************************************************************************
*  �������ƣ�void UART0_IRQHandler()
*  ����˵���������жϴ�����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-16  wuwenqi
*  ��    ע��
**********************************************************************************/	

void UART0_IRQHandler(void)
{
  uint8 ch;

  //����һ���ֽ����ݲ��ط�
   ch=uartRecvChar (UART0);      
   uart0Printf("Input = %c\n",ch);
/*
  switch(ch){
    //����д���͸���Ƭ����ָ��
  case '0':
    show_photo_data_flag = 1;
     
  break;
  case 'p':
    show_data_flag = 1;    
  break;
  case '9':
    show_photo_data_flag = 2;
    if( show_photo_data_flag == 2)
     {
        show_photo();
        show_photo_data_flag = 0;
     }    
  break;
  case '3':
    show_photo_data_flag = 3;
     if( show_photo_data_flag == 3)
     {
        uartPrintf("***************true_speed_L*******************\n ");
       for(int i=0;i<=ab;i++)
          uartPrintf("%d ",shuzu[i]);
       uartPrintf("***************true_speed_R*******************\n ");
       for(int i=0;i<=ab;i++)
          uartPrintf("%d ",shuzuL[i]);
       uartPrintf("***************bongbong*******************\n ");
       for(int i=0;i<=ab;i++)
          uartPrintf("%d ",shuzuR[i]);
        show_photo_data_flag = 0;
     }    
  break;
  case '4':
    show_photo_data_flag = 4;    
  break;
  case '5':
    show_photo_data_flag = 5;    
    break;
  case'6':
    show_photo_flagg = 1;   
  case 'r':
    show_photo_data_flag = 6;    
    break;
  case 's':
    show_photo_data_flag = 7;  
    PIT_IRQ_DIS(PIT0);
    
    PWMSetMotor2(0,0);
    
    break;
   case '8':
    show_photo_data_flag = 8;    
    break;
 
  default:
    break;
  }
  show_parameter_flag = 1; // ��ʾ�����Ϣ*/
}

    


int l_60_xzm = 11;
int h_60_xzm = 349;
int b_60_xzm = 9500;

int l_4_xzm = 5;
int h_4_xzm = 355;
int b_4_xzm = 10000;

void UART3_IRQHandler(void)
{
  uint8 ch;
  
  //����һ���ֽ����ݲ��ط�
  if(number_xzm == 2 || number_xzm == 1)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  {
    
    int x=distance_xzm;
    if(x>=50)
      x=x+3;
   if(number_xzm == 2) 
   {
   l_60_xzm = x/5-1; 
   h_60_xzm = 360 - l_60_xzm;
   }
   else
   {
     l_60_xzm = 11;
     h_60_xzm = 349;
   }
   
   ch=uartRecvChar (UART3);
   
   FTM_PWM_Duty(FTM0,CH2,100);
   FTM_PWM_Duty(FTM0,CH3,100);
   
   if(ch == 0x55)
   {
       edge_xzm = 1;
       w_xzm = 0;
       a_xzm = 0;
       count_xzm = 1;
       code_xzm[0] = 0x42;
       code_xzm[count_xzm] = ch;
   }
   else if(edge_xzm == 1 && ch == 0x53)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       a_xzm = 1;
   }
   else if(edge_xzm == 1 && ch == 0x52)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       w_xzm = 1;
   }
   
   else
   {
     edge_xzm = 0;
     if(w_xzm == 1)//���ٶ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
         wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
         wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
         
         //����ٶ�
         if(wx_xzm>2000)
           wx_xzm = wx_xzm - 4000;
         if(wy_xzm>2000)
           wy_xzm = wy_xzm - 4000;
         if(wz_xzm>2000)
           wz_xzm = wz_xzm - 4000;
         
         if(wy_xzm<0&&wy_last_xzm>0)
         {
           if(ay_xzm>=l_60_xzm&&ay_xzm<180)
           {
           duty1 = 100;
           duty2 = 100;
           //is_over_2_xzm = 1;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
           else if(ay_xzm<=h_60_xzm&&ay_xzm>180)
           {
           duty1=100;
           duty2=100;
           //is_over_2_xzm = 1;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
           else
           {
           duty1 = b_60_xzm;
           duty2 = 100;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
         }
         if(wy_xzm>0&&wy_last_xzm<0)
         {
           if(ay_xzm>=l_60_xzm&&ay_xzm<180)
           {
           duty2 = 100;
           duty1 = 100;
           //is_over_2_xzm = 1;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
           else if(ay_xzm<=h_60_xzm&&ay_xzm>180)
           {
           duty2=100;
           duty1=100;
           //is_over_2_xzm = 1;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
           else
           {
           duty2 = b_60_xzm;
           duty1 = 100;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
           }
         }
         wy_last_xzm = wy_xzm;
         //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
       }
     }
     if(a_xzm == 1)//�Ƕ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
         ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
         az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
         
         //��Ƕ�
         if(ay_xzm>=l_60_xzm+8&&ay_xzm<180)
         {
           if(number_xzm == 2)
             is_over_2_xzm = 1;
           else
             is_over_1_xzm = 1;
         }
         if(ay_xzm>=l_60_xzm&&ay_xzm<180)
         {
           duty1=100;
           duty2=100;
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
         }
         if(ay_xzm<=h_60_xzm-8&&ay_xzm>180)
         {
           if(number_xzm == 2)
             is_over_2_xzm = 1;
           else
             is_over_1_xzm = 1;
         }
         if(ay_xzm<=h_60_xzm&&ay_xzm>180)
         {
           duty1=100;
           duty2=100; 
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
         }
         if(ay_xzm<l_60_xzm)
         {
           duty1=b_60_xzm;
           duty2=100;
           
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
         }
         if(ay_xzm>h_60_xzm)
         {
           duty1=100;
           duty2=b_60_xzm;
           
           FTM_PWM_Duty(FTM0,CH0,duty1);
           FTM_PWM_Duty(FTM0,CH1,duty2);
         }
         //uart0Printf("\nax:%lf\nay:%lf\naz:%lf\n",ax_xzm,ay_xzm,az_xzm);   
       }
      }  
       //xzm=0x42;
   }
  }
  if(number_xzm == 3)/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  {
    ch=uartRecvChar (UART3);
   if(ch == 0x55)
   {
       edge_xzm = 1;
       w_xzm = 0;
       a_xzm = 0;
       count_xzm = 1;
       code_xzm[0] = 0x42;
       code_xzm[count_xzm] = ch;
   }
   else if(edge_xzm == 1 && ch == 0x53)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       a_xzm = 1;
   }
   else if(edge_xzm == 1 && ch == 0x52)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       w_xzm = 1;
   }
   
   else
   {
     edge_xzm = 0;
     if(w_xzm == 1)//���ٶ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
         wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
         wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
         
         //����ٶ�
         if(wx_xzm>2000)
           wx_xzm = wx_xzm - 4000;
         if(wy_xzm>2000)
           wy_xzm = wy_xzm - 4000;
         if(wz_xzm>2000)
           wz_xzm = wz_xzm - 4000;
         
         
         wy_last_xzm = wy_xzm;
         //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
       }
     }
     if(a_xzm == 1)//�Ƕ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
         ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
         az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
         
         if(ax_xzm>180)
           ax_xzm=ax_xzm-360;
         if(ay_xzm>180)
           ay_xzm=ay_xzm-360;
         if(az_xzm>180)
           az_xzm=az_xzm-360;
         
         ax_xzm = ax_xzm + 2.19;
         ay_xzm = ay_xzm - 1.88;
         
         double result_xzm;
         result_xzm=atan(ax_xzm/ay_xzm)*(180/3.141592);
         
         
         
         //����ٶ�
         //uart0Printf("ax:%lf\nay:%lf\naz:%lf\n-----%lf\n",ax_xzm,ay_xzm,az_xzm,result_xzm);   
       }
      }  
       //xzm=0x42;
   }    
  }
   if(number_xzm == 4)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  {
   
    
   ch=uartRecvChar (UART3);
   
   if(ch == 0x55)
   {
       edge_xzm = 1;
       w_xzm = 0;
       a_xzm = 0;
       count_xzm = 1;
       code_xzm[0] = 0x42;
       code_xzm[count_xzm] = ch;
   }
   else if(edge_xzm == 1 && ch == 0x53)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       a_xzm = 1;
   }
   else if(edge_xzm == 1 && ch == 0x52)
   {
       count_xzm = count_xzm + 1;
       code_xzm[count_xzm] = ch;
       w_xzm = 1;
   }
   
   else
   {
     edge_xzm = 0;
     if(w_xzm == 1)//���ٶ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
         wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
         wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
         
         //����ٶ�
         if(wx_xzm>2000)
           wx_xzm = wx_xzm - 4000;
         if(wy_xzm>2000)
           wy_xzm = wy_xzm - 4000;
         if(wz_xzm>2000)
           wz_xzm = wz_xzm - 4000;
          
         if(wy_xzm<0)
          {
             if((ay_xzm < l_4_xzm || ay_xzm > h_4_xzm)&&(wy_xzm>-7))
             {
              duty1=100; 
         //     duty2=10000;
              duty2=8000;
              is_over_4_xzm=1;
              FTM_PWM_Duty(FTM0,CH0,duty1);
              FTM_PWM_Duty(FTM0,CH1,duty2);
             }
             else
             {
               is_over_4_xzm=0;
               if(wy_xzm > -7 && wy_xzm > wy_last_xzm)
               {
                 duty1 = 8000;
                 duty2 = 100;
                 FTM_PWM_Duty(FTM0,CH0,duty1);
                 FTM_PWM_Duty(FTM0,CH1,duty2);
               }
               else
               {
               duty1 = 100;
             //  duty2 = 10000;
               duty2=8000;
               FTM_PWM_Duty(FTM0,CH0,duty1);
               FTM_PWM_Duty(FTM0,CH1,duty2);
               }
             }
              
          }
          if(wy_xzm>0)
          {  
            if((ay_xzm < l_4_xzm || ay_xzm > h_4_xzm)&&(wy_xzm<7))
             {
            //  duty1=10000;
               is_over_4_xzm=1;
              duty1=8000;
              duty2=100;
              FTM_PWM_Duty(FTM0,CH0,duty1);
              FTM_PWM_Duty(FTM0,CH1,duty2);
             }
             else
             {
               is_over_4_xzm=0;
               if(wy_xzm < 7 && wy_xzm < wy_last_xzm)
               {
                 duty1 = 100;
                 duty2 = 8000;
                 FTM_PWM_Duty(FTM0,CH0,duty1);
                 FTM_PWM_Duty(FTM0,CH1,duty2);
               }
               else
               {
            //   duty1 = 10000;
                 duty1=8000;
               duty2 = 100;
               FTM_PWM_Duty(FTM0,CH0,duty1);
               FTM_PWM_Duty(FTM0,CH1,duty2);
               }
             }
          }
         /*  
          if(wx_xzm>0)
          {
            if((ax_xzm < l_4_xzm || ax_xzm > h_4_xzm)&&(wx_xzm<5))
            {
           
              duty3=1000;
              duty4=1000;
              FTM_PWM_Duty(FTM0,CH2,duty3);
              FTM_PWM_Duty(FTM0,CH3,duty4);
            }
            else
            {
            duty3 = 100;
            duty4 = 10000;
            FTM_PWM_Duty(FTM0,CH2,duty3);
            FTM_PWM_Duty(FTM0,CH3,duty4);
            }
          }
         if(wx_xzm<0)
          {  
            if((ax_xzm < l_4_xzm || ax_xzm > h_4_xzm)&&(wx_xzm>-5))
            {
           
              duty3=1000;
              duty4=1000;
              FTM_PWM_Duty(FTM0,CH2,duty3);
              FTM_PWM_Duty(FTM0,CH3,duty4);
            }
            else
            {
            duty3 = 10000;
            duty4 = 100;
            FTM_PWM_Duty(FTM0,CH2,duty3);
            FTM_PWM_Duty(FTM0,CH3,duty4);
            }
          }
         */
         wy_last_xzm = wy_xzm;
         
         wx_last_xzm = wx_xzm;
         
         //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
       }
     }
     if(a_xzm == 1)//�Ƕ�
     {
       if(count_xzm < 11)
       {
          count_xzm = count_xzm + 1;
          code_xzm[count_xzm] = ch;  
       }
       if(count_xzm == 11)
       {
         ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
         ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
         az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
         
         //����ٶ�
         
         
        
         //uart0Printf("\nax:%lf\nay:%lf\naz:%lf\n",ax_xzm,ay_xzm,az_xzm);   
       }
      }  
       //xzm=0x42;
   }
  } 
}
    


u8 PITcounter = 0;
/*************************************************************************
*  �������ƣ�PIT0_IRQHandler
*  ����˵����PIT0 ��ʱ�жϷ�������ÿ1ms�ٶȺͷ���ƽ�����һ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-17 wuwenqi
*  ��    ע��
*************************************************************************/
void PIT1_IRQHandler(void)
{
  //EnableInterrupts;
   PIT_Flag_Clear(PIT1);                 //���жϱ�־λ
   if(number_xzm==5)
   {
   if(cccc==0)
   {
     duty1=10000;
     duty2=100;
     duty3=100;
     duty4=100;
   }
   if(cccc==2)
   {
     duty1=100;
     duty2=10000;
     duty3=100;
     duty4=100;
   }
   if(cccc==1)
   {
     duty1=100;
     duty2=100;
     duty3=10000;
     duty4=100;
   }
   if(cccc==3)
   {
     duty1=100;
     duty2=100;
     duty3=100;
     duty4=10000;
   }
   FTM_PWM_Duty(FTM0,CH0,duty1);
   FTM_PWM_Duty(FTM0,CH1,duty2);
   FTM_PWM_Duty(FTM0,CH2,duty3);
   FTM_PWM_Duty(FTM0,CH3,duty4);
   cccc++;
   if(cccc==4)
     cccc=0;
   
} 
  
  
 
}

void PIT0_IRQHandler(void)
{ 
   PIT_Flag_Clear(PIT0);
   if(number_xzm==3)
   {
   cc++;
   if(cc==930)
   {
     cc=0;
     ccc++;
     if(ccc>=13)
     {
       is_over_3_xzm=1;
     }
     else
     {
       is_over_3_xzm=0;
     }
   //delayms(900);
   FTM_PWM_Duty(FTM0,CH0,duty1);
   FTM_PWM_Duty(FTM0,CH1,duty2);
   FTM_PWM_Duty(FTM0,CH2,duty3);
   FTM_PWM_Duty(FTM0,CH3,duty4);
   
   if(angle_xzm>=15&&angle_xzm<=35)//15~35
  {
    if(duty1==100)
      duty1=9000;
    else
      duty1=100;
    if(duty2==100)
      duty2=9000;
    else
      duty2=100;
    if(duty3==100)
      duty3=7000;
    else
      duty3=100;
    if(duty4==100)
      duty4=7000;
    else
      duty4=100;
         return;
  }
   
  if(angle_xzm>=0&&angle_xzm<15)
  {
    if(duty1==100)
   {
     duty1=9000;
   }
   else
     duty1=100;
  
   if(duty2==100)
   {
     duty2=9000;
   }
   else
     duty2=100;
   
   duty3=100;
   duty4=100;
   return;
  }
   if(angle_xzm>=80&&angle_xzm<120)
   {
   if(duty3==100)
   {
     duty3=9000;
   }
   else
     duty3=100;
   
   if(duty4==100)
   {
     duty4=9000;
   }
   else
     duty4=100;
   duty1=100;
   duty2=100;
   return;
   
   }
   if(duty1==100)
   {
     duty1=9000;
   }
   else
     duty1=100;
  
   if(duty2==100)
   {
     duty2=9000;
   }
   else
     duty2=100;
   if(duty3==100)
   {
     duty3=9000;
   }
   else
     duty3=100;
   
   if(duty4==100)
   {
     duty4=9000;
   }
   else
     duty4=100;
   
   }
   }
   //uart0Printf("asda\n");
   
   
}


/************************************************************************* 
*  �������ƣ�PORTC_IRQHandler
*  ����˵����Һ�������������ⲿ�жϺ���
*  ����˵������   
*  �������أ���
*  �޸�ʱ�䣺2015-3-14 luozimeng
*  ��    ע��
*************************************************************************/

void PORTA_IRQHandler()
{  
  if(PORTA_ISFR & (1<<5))//�ж�PORTA 5�Ƿ�����ж�
    {
      PORTA_ISFR |=(1<<5);//�����жϣ����ж�
      ///////////////////////
 
      if(number_xzm==2)
      {
        is_over_2_xzm = 0;
        distance_xzm --;
        if(distance_xzm < 30)
          distance_xzm = 30;
      }
      if(number_xzm==3)
      {
        is_over_3_xzm = 0;
        angle_xzm --;
        if(angle_xzm < 0)
          angle_xzm = 0;
      }
      /////////////////////
    }
  if(PORTA_ISFR & (1<<13))//�ж�PORTA 13�Ƿ�����ж�
    {
      PORTA_ISFR |=(1<<13);//�����жϣ����ж�
      ///////////////////////
      if(number_xzm==2)
      {
        is_over_2_xzm = 0;
        distance_xzm ++;
        if(distance_xzm > 60)
          distance_xzm = 60;
      }
      if(number_xzm==3)
      {
        is_over_3_xzm = 0;
        cc=0;
        angle_xzm ++;
        if(angle_xzm >180)
          angle_xzm = 180;
        
       if(angle_xzm==45)
        {
        duty1=9000;
        duty4=9000;
        duty2=100;
        duty3=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==135)
        {
          duty1=9000;
        duty3=9000;
        duty2=100;
        duty4=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==90)
        {
         duty1=100;
        duty3=9000;
        duty2=100;
        duty4=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==0)
        {
          duty1=9000;
          duty3=100;
          duty2=100;
          duty4=100;
          ccc=0;
          cc=0;
        }
        if(angle_xzm>=15&&angle_xzm<=35)
        {
          duty1=9000;
          duty3=100;
          duty2=100;
          duty4=7000;
          ccc=0;
          cc=0;
        }
       
      }
          
        /////////////////////
    }
  
}

void PORTC_IRQHandler()
{  
  if(PORTC_ISFR & (1<<0))//�ж�PORTC 0�Ƿ�����ж�
  {
      PORTC_ISFR |=(1<<0);//�����жϣ����ж�
        ///////////////////////
        //uartPrintf("\n--------------PC0--------------��EXIT��\n");
        /////////////////////
  }
  if(PORTC_ISFR & (1<<6))//�ж�PORTC 6�Ƿ�����ж�
      {
        PORTC_ISFR |=(1<<6);//�����жϣ����ж�
        ///////////////////////
          //uartPrintf("\n--------------PC6--------------��EXIT��\n");
       /* 
        int x=0;
        while(x<10)
        {
          if(x%2==0)
          {
              FTM_PWM_Duty(FTM0,CH0,9500);
              FTM_PWM_Duty(FTM0,CH1,100);
          }
           else
           {
             FTM_PWM_Duty(FTM0,CH1,9500);
             FTM_PWM_Duty(FTM0,CH0,100);
           }
        
        delayms(850);
        x++;
        }
        
         number_xzm=5;
         cccc=0;*/
        /////////////////////
      }
   if(PORTC_ISFR & (1<<7))//�ж�PORTC 7�Ƿ�����ж�
    {
      PORTC_ISFR |=(1<<7);//�����жϣ����ж�
      
      ///////////////////////
            //uartPrintf("\n--------------PC7--------------��EXIT��\n");

      /////////////////////
    }
}

void PORTE_IRQHandler()
{  
  if(PORTE_ISFR & (1<<24))//�ж�PORTE 24�Ƿ�����ж�
  {
     PORTE_ISFR |=(1<<24);//�����жϣ����ж�
     ///////////////////////
     if(gpio_get(PORTE,25)==HIGH && gpio_get(PORTE,26)==HIGH)
     {
        number_xzm = 4;
        duty1=100;
        duty2=100;
        duty3=100;
        duty4=100;
        //uartPrintf("---------------------4\n");
     }
     else
     {
        number_xzm = 1;
        //uartPrintf("---------------------1\n");
     }
        
     /////////////////////
  }
  if(PORTE_ISFR & (1<<25))//�ж�PORTE 25�Ƿ�����ж�
  {
     PORTE_ISFR |=(1<<6);//�����жϣ����ж�
     ///////////////////////
     if(gpio_get(PORTE,24)==HIGH && gpio_get(PORTE,26)==HIGH)
     {
        number_xzm = 4;
        //uartPrintf("---------------------4\n");
        duty1=100;
        duty2=100;
        duty3=100;
        duty4=100;
     }
     else
     {
        number_xzm = 2;
        //uartPrintf("---------------------2\n");
     }
     /////////////////////
  }
  if(PORTE_ISFR & (1<<26))//�ж�PORTE 26�Ƿ�����ж�
  {
     PORTE_ISFR |=(1<<26);//�����жϣ����ж�
      
     ///////////////////////
     if(gpio_get(PORTE,25)==HIGH && gpio_get(PORTE,26)==HIGH)
     {
        number_xzm = 4;
        duty1=100;
        duty2=100;
        duty3=100;
        duty4=100;
        //uartPrintf("---------------------4\n");
     }
     else
     {
        number_xzm = 3;
        if(angle_xzm==45)
        {
        duty1=9000;
        duty4=9000;
        duty2=100;
        duty3=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==135)
        {
          duty1=9000;
        duty3=9000;
        duty2=100;
        duty4=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==90)
        {
         duty1=100;
        duty3=9000;
        duty2=100;
        duty4=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==0)
        {
          duty1=9000;
        duty3=100;
        duty2=100;
        duty4=100;
        ccc=0;
        cc=0;
        }
        if(angle_xzm==30)
        {
          duty1=9000;
          duty3=100;
          duty2=100;
          duty4=7500;
          ccc=0;
          cc=0;
        }
        //uartPrintf("---------------------3\n");
     }
     /////////////////////
  }
}



/************************************************************************* 
*  �������ƣ�PORTB_IRQHandler
*  ����˵��������ͷ�г��жϷ�����  ���ж�ʹ��food���Ͳ��÷���ż����
*  ����˵������   
*  �������أ���
*  �޸�ʱ�䣺2014-6-17 wuwenqi
*  ��    ע��
*************************************************************************/
#if 1
u32 tmpline = 0;//�к�
 //�Ѳɼ�����ͼ����к�

void PORTB_IRQHandler()
{
     u32 tmpISFR = 0;
     tmpISFR=PORTB_ISFR;
     PORTB_ISFR |= 0xFFFFFFFF;
     
     DisableInterrupts; //�������ж�Ƕ��
     //========================== n = CAM_HR_CHn ========================================
     
     if((tmpISFR & (1<<CAM_HR_CHn)))   //PB3 �����ж�  ���ж�
     {
       //uart0Printf("H ");
         tmpline++; 
             if(0 == (tmpline % 2))//��tmplineȡ�࣬��tmplineΪż����ʱ���루�������ݴ��䣩
             {
               if(tmpline > 2)
               {
                 DMA_SETDAADDR(CAM_DMA_CH,&Pic_Buffer[tmprow][0]);//Pic_Buffer�Ĵ�СΪ120(row)*160(column) ������ָ�ӵ�row�еĵ�0�У������ص㣩��ʼ����
                 DMA_EN(CAM_DMA_CH);//ʹ��ͨ��Ӳ��DMA���� 
                 tmprow++;
               }
              // uart0Printf("R:%d ",tmprow);
               if(tmprow >= ROW)
               {
                 
                   Dis_CAM;
                   photo_complete_flag = 1;
                    //uartPrintf("%d\n",photo_complete_flag);
                   //uart0Printf("C");
               }
            }  
     }
     //========================== n = CAM_VS_CHn ========================================
     if((tmpISFR & (1<<CAM_VS_CHn))) //PTB2 �����ж�  ���жϣ�
     { 
       //uart0Printf("V ");
         tmpline = 0;//�к�����
         tmprow = 0; //�к�����
         DMA_IRQ_CLEAN(CAM_DMA_CH);//���ͨ�������жϱ�־λ
         En_HREF;                  //�����ж�  
         
         
     }
     
    
       
     EnableInterrupts; //���ж�
}
#endif

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�LPT_Handler
*  ����˵����LPT����������ж�
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-17   �Ѳ���
*  ��    ע��
*************************************************************************/
volatile u8 LPT_INT_count = 0;
void  LPT_Handler(void)
{
    LPTMR0_CSR |= LPTMR_CSR_TCF_MASK;   //���LPTMR�Ƚϱ�־
    LPT_INT_count++;                    //�ж������1
}