/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[lptmr.h] 
* 描  述 ：lptmr定功耗定时器，目前只有一个定时器延时函数
* 原创   ：官方例程
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：
***********************************************************************
*/
#ifndef __LPTMR_H__
#define __LPTMR_H__

/********************************************************************/

#define LPTMR_irq     85u
#define INT_COUNT  65000

typedef enum LPT0_ALTn
{
    //只有1、2管脚，并没有0、3管脚
    LPT0_ALT1=1,        // PTA19        //不建议使用，与外部晶振相连
    LPT0_ALT2=2         // PTC5
}LPT0_ALTn;

typedef enum LPT_CFG
{
    LPT_Rising  = 0,    //上升沿触发
    LPT_Falling = 1     //下降沿触发
}LPT_CFG;

/*          用于延时         */

void time_delay_ms(uint32 ms);      //延时


/*       用于脉冲计数        */
#define  LPTMR_COUNTER_CLEAN()      LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;\
                                    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK            //计数器计数清0


void lptmr_counter_clean(void);									
void lptmr_counter_init(LPT0_ALTn,u16 count,u8 PrescaleValue,LPT_CFG);                              //计数器初始化设置

void lptmr_irq_EN();

void lptmr_irq_DIS();

#define LPTMR_IRQ_EN()    LPTMR_CSR_REG(LPTMR0_BASE_PTR) |= LPTMR_CSR_TIE_MASK; enable_irq(LPTMR_irq)	
#define LPTMR_IRQ_DIS()   LPTMR_CSR_REG(LPTMR0_BASE_PTR) &= ~LPTMR_CSR_TIE_MASK; disable_irq(LPTMR_irq)	

/********************************************************************/

#endif /* __LPTMR_H__ */
