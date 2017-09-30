/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[exti.c] 
* 描  述 ：EXTI外部GPIO中断例程
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：GPIO外部中断模块
***********************************************************************
*/
#include "common.h"
#include "gpio.h"
#include "exti.h"   



/*************************************************************************
*  函数名称：exti_init
*  功能说明：EXTI外部GPIO中断初始化
*  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
*            n           端口引脚
*            exti_cfg    触发选项和上拉下拉选项
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
void  exti_init(PORTx portx, u8 n,exti_cfg cfg)
{
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<portx);      //开启PORTx端口
    
    PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // 复用GPIO , 确定触发模式 ,开启上拉或下拉电阻
    GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //输入模式
     
    PORT_ISFR_REG(PORTX[portx])|= (1<<n);
    enable_irq(portx+87);                           //使能PORT中断，PORTA的ISR中断号为87
}
/*************************************************************************
*  函数名称：exti_irq_DIS
*  功能说明：外部中断关闭
*  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
*            n           端口引脚
*  函数返回：无
*  修改时间：2012-11-26
*  备    注：用于关闭某个管脚的中断功能
*************************************************************************/
void  exti_irq_DIS(PORTx portx, u8 n)
{    
    PORT_PCR_REG(PORTX[portx],n) &= ~PORT_PCR_IRQC_MASK;
}
/*************************************************************************
*  函数名称：exti_irq_EN
*  功能说明：使能某一个管脚的中断功能
*  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
*            n           端口引脚
*            exti_cfg    触发选项和上拉下拉选项
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void  exti_irq_EN(PORTx portx, u8 n,exti_cfg cfg)
{    
    PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // 复用GPIO , 确定触发模式 ,开启上拉或下拉电阻
    GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //输入模式
     
    PORT_ISFR_REG(PORTX[portx])|= (1<<n);
}
