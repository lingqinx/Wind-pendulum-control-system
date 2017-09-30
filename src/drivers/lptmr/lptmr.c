/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[lptmr.c] 
* 描  述 ：lptmr定功耗定时器，目前只有一个定时器延时函数
* 原创   ：官方例程
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：
***********************************************************************
*/

#include "common.h"
#include "lptmr.h"
#include "fun.h"


/*************************************************************************
*  函数名称：lptmr_counter_init
*  功能说明：LPT累加捕捉
*  参数说明：LPT0_ALTn      输入管脚号 ，只能是 LPT0_ALT1、LPT0_ALT2
*            count          产生中断的累加计数值
*            PrescaleValue  延时滤波
*            LPT_CFG        触发方式
*  函数返回：无
*  修改时间：2012-3-14
*  备    注：
*************************************************************************/
void lptmr_counter_init(LPT0_ALTn altn,u16 count,u8 PrescaleValue,LPT_CFG cfg)
{

	if(PrescaleValue > 0x0f)PrescaleValue=0x0f;

	//设置输入管脚
        /* 与外部晶振相接不建议使用
	if(altn==LPT0_ALT1)
	{
		SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;  //打开 PORTA 时钟
		PORTA_PCR19=PORT_PCR_MUX(0x6);      //在PTA19上使用 ALT6
	}
	else 
        */
        if(altn==LPT0_ALT2)
	{
		SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;  //使能 PORTC 时钟
		PORTC_PCR5=PORT_PCR_MUX(0x4);       //在PTC5上使用 ALT4
	}
	else                                    //不可能发生事件
	{
		assert_failed(__FILE__, __LINE__);  //设置管脚有误？
	}

    /* 开启模块时钟 */
    SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;      //使能LPT模块时钟

    /* 清状态寄存器 */
    LPTMR0_CSR=0x00;                        //先关了LPT，这样才能设置时钟分频等

    /* 设置累加计数值  */
    LPTMR_CMR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CMR_COMPARE(count);                       //设置比较值

    /* 时钟选择 */
    LPTMR_PSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_PSR_PCS(0x1) | LPTMR_PSR_PBYP_MASK  |  LPTMR_PSR_PRESCALE(PrescaleValue);        //使用 LPO clock 且 bypass glitch filter
	//                                                        开启和配置脉冲滤波器：2^n个时钟上升沿才识别

    /* 管脚设置、使能中断  */
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CSR_TPS(altn)| LPTMR_CSR_TMS_MASK  | ( cfg ==LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  | LPTMR_CSR_TEN_MASK;
    //                                       选择输入管脚        选择脉冲计数                                   下降沿       上升沿           使能LPT
    // TFC = 0，即计数值等于比较值时，计数值复位
}

/*************************************************************************
*  函数名称：lptmr_irq_EN
*  功能说明：lptmr定时中断使能
*  参数说明：
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void lptmr_irq_EN()
{
     LPTMR_CSR_REG(LPTMR0_BASE_PTR) |= LPTMR_CSR_TIE_MASK;     //使能 lptmr定时器,并开中断  
     enable_irq(LPTMR_irq);	                //开引脚的IRQ中断	
}

/*************************************************************************
*  函数名称：lptmr_irq_DIS
*  功能说明：lptmr定时中断关闭
*  参数说明：
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void lptmr_irq_DIS()
{
     LPTMR_CSR_REG(LPTMR0_BASE_PTR) &= ~LPTMR_CSR_TIE_MASK;     //关 lptmr定时器,并关中断  
     disable_irq(LPTMR_irq);	
}

void lptmr_counter_clean(void)
{
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;     //禁用LPT的时候就会自动清计数器的值
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK;
}



/*************************************************************************
*  函数名称：time_delay_ms
*  功能说明：延时函数，使用定功耗定时器延时，准确
*  参数说明：ms   延时时间，单位为ms
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：官方例程自带       //使用外部测速不要使用这个函数，影响寄存器配置
                                //不精确延时用delayms()(这个函数也很准的)
*************************************************************************/
void time_delay_ms(uint32 ms)
{
    /* Make sure the clock to the LPTMR is enabled */
    SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;

    /* Set the compare value to the number of ms to delay */
    LPTMR0_CMR = ms;

    /* Set up LPTMR to use 1kHz LPO with no prescaler as its clock source */
    LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK;

    /* Start the timer */
    LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;

    /* Wait for counter to reach compare value */
    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK))
    {
      //uartPrintf("%d\n",LPTMR0_CNR);
      //delayms(10);
    }

    /* Clear Timer Compare Flag */
    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;

    return;
}



