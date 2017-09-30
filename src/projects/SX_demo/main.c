/*******************************************************************************
                              �����ʵ��ѧ K60 ѧϰ����
���������ơ������ʵ��ѧ����ͷ������
��Designed��snowwolf
��E-mail  ��snowwolf2012@qq.com
������汾��V1.0
�������¡�2012��3��24��
------------------------------------------------
��dev.env.��IAR 6.3
��Target  ��K60X256
��Crystal ��50.000Mhz
��busclock��48.000MHz
��pllclock��96.000MHz   
�� ˵  �� �������ڲ�ѧϰʹ�ã������⴫
�� ��  �� ��Ұ��Ƕ��ʽ����������
            ���𿪷�����
            ���ݴ�ѧ��Ƕ��ʽϵͳԭ����ʵ����

�ӿ�˵����
          ���뿪�أ�PA14    PA16    PA17   PA5
          ���    ��PA12    PA13
          ���    ��PC1     PC2     PC3     PC4
          ���ж�  ��PB18
          ���ж�  ��PB19
          Y0-Y7   : PD0-PD7  (��������ͷor�ⲿAD������)
          PLCK    ��PB9    (��Ҫ��DMA�Ĳ�Ҫ����һ���źţ�PLCK����4��Ƶ���PB9)
                    ������HD74LS161AP���ķ�Ƶ��·
          ����    ��PB16  PB17  ������ 115200  �ղ����źſ��԰��շ���תһ��
          ������  ��PC5
��Ҫ�޸���Ƶ�ĵ� k60_bupt.h���޸�  ʹ��DMA���鵽200M�ں� 100Mbus
********************************************************************************/	


#include "common.h"
#include "include.h"


void main()
{
  DisableInterrupts;  
  
  uartPrintf("�����ʵ��ѧ����ͷ������\n");
  
  gpio_init  (PORTA,15,GPO,HIGH);         //���İ����LED����ʼ�� PTA15 ������ߵ�ƽ ,�� ��ʼ�� LED0����
  gpio_init  (PORTA,4,GPO,HIGH);          //�������LED    ��ʼ�� PTA4 �� ����ߵ�ƽ ,�� ��ʼ�� LED0����
  
  
  //��ʼ�����뿪��
  DIPswitch_ctrl();
  //��ʼ�����
  steer_init();
  //�����ʼ��
  motor_init();
  //����ͷ��ʼ��
  CCD_init();
  
  //��ʼ��PIT   100Hz  
  pit_init(PIT0,100); 
  //ʹ��PIT  ����ʱ�ر�  ������������ʱʹ��
  //��ʵ�������ⶼ��Ҫ�ر�ʹ��
  //PIT_IRQ_EN(PIT0);
  //gpio_init(PORTD,0,GPO,0);   //���ڲ���PIT
  
  //��ʼ���ⲿ����  ��PC5   �ڶ���������65535 ���������ǰ���� ����һ��16λ������
  lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising);   
  //�򿪴����ж�
  UART_IRQ_EN(UART0); 
  EnableInterrupts;    
  while(1)
  {
//���� ��1����ʾ�򿪵�ǰ���Գ��򣬡�0��ʾ�رա�
//ʵ��0
#if 0           //��������     ���Խ���� �ɹ�
                //���İ�������ϸ���һ��LED��˸��Ƶ��1Hz
                GPIO_TURN(PORTA,15);
                GPIO_TURN(PORTA,4);
                delayms(500);
//ʵ��һ
#elif 0           //���Բ��뿪��     ���Խ���� �ɹ�
                //������ PA14    PA15    PA16    PA17 ���ڲ��뿪�ص�·�ϣ�����������ƺõľ����⼸�����ţ�
                uartPrintf("�л����뿪�عۿ�Ч��\n");
                DIPswitch_ctrl();
                delayms(1000);
//ʵ���
#elif 0         //���Զ��        ���Խ���� �ɹ�
                //����  ��PA12    PA13 ����ʾ�����ϣ�������  Ŀǰ���Ҽ�����200 - 5000 ��1% -- 50%
                //100Hz
                u32 i = 0;
                
                //�� i = 0 �� i = 5500 ʱ���ڰ�ȫ��Χ��Ӧ�ò���Ӧ
                //ռ�ձ�ÿһ���5%
                for(i = 0;i<10500;i+=100)
                {
                  uartPrintf("��ǰռ�ձ� %d %%\n",i*100/FTM_PRECISON);
                  PWMSetSteer(i) ; 
#if STEER_DOUBLE
                  PWMSetSteer1(i) ;
#endif
                  delayms(2000);
                }
                
//ʵ����
#elif 0         //���Ե��        ���Խ�����ɹ�
                //����  �� PC1     PC2     PC3     PC4 ����ʾ�����ϣ�������
                int i = 0;
                //ռ�ձ�ÿһ���5%
                //��Χ 0%-100%
                //С�� 0 �� PC2 PC4���в��� PC1 PC3Ϊ0��ƽ
                //���� 0 �� PC1 PC3���в��� PC2 PC4Ϊ0��ƽ
                for(i = -5000;i<5000;i+=500)
                {
                  uartPrintf("��ǰռ�ձ� %d %%\n",abs(i)*100/FTM_PRECISON);
#if MOTOR_DOUBLE
                  PWMSetMotor2(i,i);  
#else
                  PWMSetMotor(i);  
#endif            
                  delayms(2000);
                }
//ʵ����
#elif 0         //�����жϷ�ȡͼ��  ���Խ��
#ifdef CCD_DMA
      #error "�������жϷ��ɼ�ͼ����ע�͵� CCD_DMA!"            
#endif
                

                while(1)
                {
                uint32 tick0 = 0,tick1 = 0;	
                uartPrintf("\n���� s  ��ʼ�ɼ�һ��ͼ��\n");   
                if( (showChoice & 0x01) )
                 {
                    uartPrintf("\n��ʼ�ɼ�һ��ͼ��\n");   
                
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\nͼ�����ݱ���10�� ��ʱ��%d us\n",tick0 - tick1);
                   
                    PIT_RELOAD(PIT0,1); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetPhoto();    //����������п��жϲ���
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n�ɼ���һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
                    
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetBlackLine() ;
                    tick1 = GET_PITCNTus(PIT0);  
                    uartPrintf("\n����һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
                    
                    ShowPhoto();
                    
                    
                    WritePicBlack();
                    
                    //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
                    
                    showChoice &= 0xFE;//�ɼ�����
                    delayms(1000);
                }//end of if
                 water_lights();
                delayms(1000);
                }
                
//ʵ����
#elif 1         //����DMA��ȡͼ��  ���Խ��                
#ifndef CCD_DMA
      #error "������DMA���ɼ�ͼ���붨�� CCD_DMA!"            
#endif
extern u32 picLineSum;
                while(1)
                {
                uint32 tick0 = 0,tick1 = 0;	
                uartPrintf("\n���� s  ��ʼ�ɼ�һ��ͼ��\n");   
                if( (showChoice & 0x01) )
                 {
                    uartPrintf("\n��ʼ�ɼ�һ��ͼ��\n");   
                /*
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\nͼ�����ݱ���10�� ��ʱ��%d us\n",tick0 - tick1);
                 */  
                    PIT_RELOAD(PIT0,1); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetPhoto();    //����������п��жϲ���
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n�ɼ���һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
                    
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetBlackLine() ;
                    tick1 = GET_PITCNTus(PIT0);  
                    uartPrintf("\n����һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
                    
                    uartPrintf("\n�У�%d \n",picLineSum); 
                    ShowPhoto();
                    
                    //WritePicBlack();
                    
                    //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
                    
                    showChoice &= 0xFE;//�ɼ�����
                    delayms(1000);
                }//end of if
                 water_lights();
                
                delayms(1000);
                }
                
//ʵ����
#elif 0         //����PIT       ���Խ���� �ɹ�  
                  // ���� :�ӳ�ʼ�����ִ��ж�
                         //����PD0������Կ�����һ��650Hz�ķ��� ˵��PIT1300Hz����
                         
                
//ʵ����               
#elif 0         //�����ⲿ����   ���Խ��:  �ɹ�
                //�ӳ�ʼ�����ִ��ж�
                //�� PWM ģ�������  �� PC1 ��PC5�̽�
                int i = 0;  
                for(i = 1;i<60;i+=4)
                {
                  FTM_PWM_freq(MOTOR_FTMN,i*1000) ;
                  FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0, 5000);
                  delayms(1000); 
                  uartPrintf("��ǰPWM��Ƶ��%7dHz ",i*1000); 
                  uartPrintf("10ms��ȡ����(�ٶ�):%4d��\n",trueSpeed); 
             
                }
//ʵ���
#elif 0         //�жϷ�����������  ���Խ�� 
                //ֱ�����뿴Ч��
#endif    
    
  }
}