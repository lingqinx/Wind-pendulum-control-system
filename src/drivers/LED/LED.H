/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[LED.h] 
* ��  �� ��LED��������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��LED��������
***********************************************************************
*/
#ifndef __LED_H__
#define __LED_H__

#include "common.h"
#include "gpio.h"


//���ÿ������LEDӲ��
#define   LED_PORT      PORTA     //LED���ڵĶ˿�
typedef enum LEDn
{
  LED0    =      14,              //��Ӧ�����ź�
  LED1    =      15,
  LED2    =      16,
  LED3    =      17
}LEDn;




//LED����״̬�궨��
typedef enum LED_status
{
  LED_ON  =   0,         //����(��Ӧ�͵�ƽ)
  LED_OFF =   1           //�ư�(��Ӧ�ߵ�ƽ)
}LED_status;



void    LED_init(void);                                                 // LED��ʼ��    ����
#define LED_INIT()             gpio_init(LED_PORT,LED0,GPO,LED_OFF);\
                               gpio_init(LED_PORT,LED1,GPO,LED_OFF);\
                               gpio_init(LED_PORT,LED2,GPO,LED_OFF);\
                               gpio_init(LED_PORT,LED3,GPO,LED_OFF)       // LED��ʼ��    �궨��   Ч�ʸ�


void    LED_turn(LEDn);
#define LED_TURN(LEDn)         GPIO_TURN(LED_PORT,LEDn)                  // LED��ת


#define LED(LEDn,LED_status)   GPIO_SET_1bit(LED_PORT,LEDn,LED_status)    // LED����
void    led(LEDn,LED_status);                                             // LED����



void    water_lights(void);                                               // ��ˮ��


//������ʱ,������ˮ�Ƶ���ʱ
#include "fun.h"
#define   LED_DELAY           delay()
#define   LED_DELAY_MS(x)     delayms(x)

#endif  //__LED_H__