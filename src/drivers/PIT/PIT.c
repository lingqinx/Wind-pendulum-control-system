/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[PIT.c] 
* 描  述 ：PIT周期中断计时器，定时中断
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：
***********************************************************************
*/


#include "common.h"
#include  "PIT.h"     //周期中断计时器

/*************************************************************************
*  函数名称：pit_init
*  功能说明：PITn定时器初始化
*  参数说明：PITn        模块号（PIT0~PIT3）
             freq        频率（Hz）
*  函数返回：无
*  修改时间：2012-1-24
*  备    注：
*************************************************************************/
void pit_init(PITn pitn,u32 freq)
{
    //PIT 用的是 Bus Clock 总线频率
    //溢出计数 = 总线频率 * 时间

    /* 开启时钟*/
    SIM_SCGC6       |=SIM_SCGC6_PIT_MASK;                             //使能PIT时钟

    /* PIT模块控制 PIT Module Control Register (PIT_MCR) */
    PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //使能PIT定时器时钟 ，调试模式下继续运行

    /* 定时器加载值设置 Timer Load Value Register (PIT_LDVALn) */
    PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;                                           //设置溢出中断时间

    //定时时间到了后，TIF 置 1 。写1的时候就会清0
    PIT_Flag_Clear(pitn);                                             //清中断标志位

    /* 定时器控制寄存器 Timer Control Register (PIT_TCTRL0) */
    PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
    		                                  
}

/*************************************************************************
* 函数名称: PIT_Reload_Freq                                                    
* 函数返回: 计数器重新计数                                         
* 参数说明: pitn:表示pit通道号。        
* 功能概要: 设置相关寄存器的值 
*  修改时间：2012-3-24
*  备    注：要更改计数器值需要先关闭使能再改，再打开
*************************************************************************/
void PIT_Reload_Freq(PITn pitn,u32 freq)
{
    PIT_TCTRL(pitn) &= ~PIT_TCTRL_TEN_MASK;
    PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;  
    PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
}

/*************************************************************************
* 函数名称: get_get_PITCNT                                                       
* 函数返回: 当前定时器剩余时间                                          
* 参数说明: pitn:表示pit通道号。        
* 功能概要: 设置相关寄存器的值 
*  修改时间：2012-3-24
*  备    注：ms返回ms,us返回us
*************************************************************************/
uint32 get_PITCNTms(PITn pitn)
{
    return PIT_CVAL(pitn)/bus_clk_khz;
}

uint32 get_PITCNTus(PITn pitn)
{
    return PIT_CVAL(pitn)/(bus_clk_khz/1000);
}
uint32 get_PITCNTtick(PITn pitn)
{
    return PIT_CVAL(pitn);
}

/*************************************************************************
*  函数名称：pit_irq_EN
*  功能说明：PITn定时中断使能
*  参数说明：PITn        模块号（PIT0~PIT3）
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void pit_irq_EN(PITn pitn)
{
     PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;    //使能 PITn定时器,并开PITn中断  
     enable_irq(pitn+68);                      //开接收引脚的IRQ中断
}

/*************************************************************************
*  函数名称：pit_irq_DIS
*  功能说明：PITn定时中断关闭
*  参数说明：PITn        模块号（PIT0~PIT3）
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void pit_irq_DIS(PITn pitn)
{
     PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;    //关 PITn定时器, 
     disable_irq(pitn+68);                      //关IRQ中断
}