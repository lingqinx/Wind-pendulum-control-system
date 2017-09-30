/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[exti.c] 
* ��  �� ��EXTI�ⲿGPIO�ж�����
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��GPIO�ⲿ�ж�ģ��
***********************************************************************
*/
#include "common.h"
#include "gpio.h"
#include "exti.h"   



/*************************************************************************
*  �������ƣ�exti_init
*  ����˵����EXTI�ⲿGPIO�жϳ�ʼ��
*  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
*            n           �˿�����
*            exti_cfg    ����ѡ�����������ѡ��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void  exti_init(PORTx portx, u8 n,exti_cfg cfg)
{
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<portx);      //����PORTx�˿�
    
    PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // ����GPIO , ȷ������ģʽ ,������������������
    GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //����ģʽ
     
    PORT_ISFR_REG(PORTX[portx])|= (1<<n);
    enable_irq(portx+87);                           //ʹ��PORT�жϣ�PORTA��ISR�жϺ�Ϊ87
}
/*************************************************************************
*  �������ƣ�exti_irq_DIS
*  ����˵�����ⲿ�жϹر�
*  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
*            n           �˿�����
*  �������أ���
*  �޸�ʱ�䣺2012-11-26
*  ��    ע�����ڹر�ĳ���ܽŵ��жϹ���
*************************************************************************/
void  exti_irq_DIS(PORTx portx, u8 n)
{    
    PORT_PCR_REG(PORTX[portx],n) &= ~PORT_PCR_IRQC_MASK;
}
/*************************************************************************
*  �������ƣ�exti_irq_EN
*  ����˵����ʹ��ĳһ���ܽŵ��жϹ���
*  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
*            n           �˿�����
*            exti_cfg    ����ѡ�����������ѡ��
*  �������أ���
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��
*************************************************************************/
void  exti_irq_EN(PORTx portx, u8 n,exti_cfg cfg)
{    
    PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // ����GPIO , ȷ������ģʽ ,������������������
    GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //����ģʽ
     
    PORT_ISFR_REG(PORTX[portx])|= (1<<n);
}
