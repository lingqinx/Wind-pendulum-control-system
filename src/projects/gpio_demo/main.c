/*******************************************************************************
                              �����ʵ��ѧ K60 ѧϰ����

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
��������ʱ�䡿2014-6-16   wuwenqi

�˿ڶ��壺  PTD��0,7������Y��0,7��
            PTB2����VSYN   ���ж�
            PTB3����HREF   ���ж�
            PTB9����PCLK
            PTB0����SCL
            PTB1����SDA

********************************************************************************/	

#include "common.h"
#include "include.h"
#include "math.h"


void main()
{
   
  MPU6050_Init();
  uart_init (UART3,115200);
  uart_irq_EN(UART3);
  
  uart_irq_EN(UART0);
  LED_INIT_xzm();
  pit_init(PIT0,1000);
  //pit_init(PIT1,1);
  pit_irq_EN(PIT0);
  //pit_irq_EN(PIT1);
   
    gpio_init(PORTA,17,GPO,LOW);
    gpio_init(PORTA,16,GPO,LOW);
    gpio_init(PORTB, 3,GPO,LOW);
    gpio_init(PORTB, 2,GPO,LOW);
    
    exti_init(PORTC, 6, rising_down);      //PORTC  6 �˿��ⲿ�жϳ�ʼ�� �������ش����жϣ��ڲ�����
    exti_init(PORTC, 7, rising_down);      //PORTC  7 �˿��ⲿ�жϳ�ʼ�� �������ش����жϣ��ڲ�����
    exti_init(PORTC, 0, rising_down);      //PORTC  0 �˿��ⲿ�жϳ�ʼ�� �������ش����жϣ��ڲ�����
    exti_init(PORTA,13, rising_down);      //PORTA 13 �˿��ⲿ�жϳ�ʼ�� �������ش����жϣ��ڲ�����
    exti_init(PORTA, 5, rising_down);      //PORTA  5 �˿��ⲿ�жϳ�ʼ�� �������ش����жϣ��ڲ�����
    exti_init(PORTE,24, rising_down);      //PORTE 24 �˿��ⲿ�жϳ�ʼ�� ���ߵ�ƽ�����ж�
    exti_init(PORTE,25, rising_down);      //PORTE 25 �˿��ⲿ�жϳ�ʼ�� ���ߵ�ƽ�����ж�
    exti_init(PORTE,26, rising_down);      //PORTE 26 �˿��ⲿ�жϳ�ʼ�� ���ߵ�ƽ�����ж�
 
        

  FTM_PWM_init(FTM0,CH0,1600,duty1);
  FTM_PWM_init(FTM0,CH1,1600,duty2);
  FTM_PWM_init(FTM0,CH2,1600,duty3);
  FTM_PWM_init(FTM0,CH3,1600,duty4);
  
  //time_delay_ms(1000);
              
  //int count=0;
  
    while(1)
    {
      //uart0Printf("%d\n",number_xzm);
      if(number_xzm==1)//���1,2,3,4
      {
        gpio_set(PORTB, 3,HIGH);  
        xianshi(is_over_1_xzm);
        delayms(5);
        gpio_set(PORTB, 3,LOW);
        
        gpio_set(PORTB, 2,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTB, 2,LOW);
        
        gpio_set(PORTA,16,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTA,16,LOW);
        
        gpio_set(PORTA,17,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTA,17,LOW);
      }
      if(number_xzm==2)//���1,2,3,4
      {
        gpio_set(PORTB, 3,HIGH);  
        xianshi(is_over_2_xzm);
        delayms(5);
        gpio_set(PORTB, 3,LOW);
        
        gpio_set(PORTB, 2,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTB, 2,LOW);
        
        gpio_set(PORTA,16,HIGH);
        xianshi(distance_xzm/10);
        delayms(5);
        gpio_set(PORTA,16,LOW);
        
        gpio_set(PORTA,17,HIGH);
        xianshi(distance_xzm%10);
        delayms(5);
        gpio_set(PORTA,17,LOW);
      }
      if(number_xzm==3)//���1,2,3,4
      {
        gpio_set(PORTB, 3,HIGH);  
        xianshi(is_over_3_xzm);
        delayms(5);
        gpio_set(PORTB, 3,LOW);
        
        gpio_set(PORTB, 2,HIGH);
        xianshi(angle_xzm/100);
        delayms(5);
        gpio_set(PORTB, 2,LOW);
        
        gpio_set(PORTA,16,HIGH);
        xianshi((angle_xzm%100)/10);
        delayms(5);
        gpio_set(PORTA,16,LOW);
        
        gpio_set(PORTA,17,HIGH);
        xianshi(angle_xzm%10);
        delayms(5);
        gpio_set(PORTA,17,LOW);
      }
      if(number_xzm==4)//���1,2,3,4
      {
        gpio_set(PORTB, 3,HIGH);  
        xianshi(is_over_4_xzm);
        delayms(5);
        gpio_set(PORTB, 3,LOW);
        
        gpio_set(PORTB, 2,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTB, 2,LOW);
        
        gpio_set(PORTA,16,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTA,16,LOW);
        
        gpio_set(PORTA,17,HIGH);
        xianshi(0);
        delayms(5);
        gpio_set(PORTA,17,LOW);
      }
      
        FTM_PWM_Duty(FTM0,CH0,duty1);
        FTM_PWM_Duty(FTM0,CH1,duty2);
        FTM_PWM_Duty(FTM0,CH2,duty3);
        FTM_PWM_Duty(FTM0,CH3,duty4);
        
        //time_delay_ms(900);                 //��ʱ0.5s   
       
        //uart0Printf("xzm-%ld-%ld-%ld-%ld-%ld-%ld\n",ax,ay,az,wx,wy,wz);
        
       
    }   
}

  
 