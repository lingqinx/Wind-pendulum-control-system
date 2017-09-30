/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[PIT.h] 
* 描  述 ：PIT周期中断计时器，定时中断
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：
***********************************************************************
*/

#ifndef _PIT_H_
#define _PIT_H_



typedef enum PITn
{
  PIT0,
  PIT1,
  PIT2,
  PIT3
}PITn;


void      pit_init(PITn pitn,u32 freq);                                                //初始化PITn，并设置定时时间(单位为bus时钟周期)

#define   PIT_Flag_Clear(PITn)          PIT_TFLG(PITn)|=PIT_TFLG_TIF_MASK        //清中断标志

#define   GET_PITCNTms(pitn)            PIT_CVAL(pitn)/bus_clk_khz
#define   GET_PITCNTus(pitn)            PIT_CVAL(pitn)/(bus_clk_khz/1000)
#define   GET_PITCNTtick(pitn)          PIT_CVAL(pitn)
#define   PIT_RELOAD(pitn,freq)         PIT_TCTRL(pitn) &= ~PIT_TCTRL_TEN_MASK;\
                                        PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1;\
                                        PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK

void   PIT_Reload_Freq(PITn pitn,u32 freq);
uint32 get_PITCNTms(PITn pitn);
uint32 get_PITCNTus(PITn pitn);
/*************************************************************************
*  函数名称：pit_irq_EN
*  功能说明：PITn定时中断使能
*  参数说明：PITn        模块号（PIT0~PIT3）
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void pit_irq_EN(PITn pitn);

/*************************************************************************
*  函数名称：pit_irq_DIS
*  功能说明：PITn定时中断关闭
*  参数说明：PITn        模块号（PIT0~PIT3）
*  函数返回：无
*  修改时间：2012-3-24
*  备    注：
*************************************************************************/
void pit_irq_DIS(PITn pitn);

#define PIT_IRQ_EN(pitn)    PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;enable_irq(pitn+68)
#define PIT_IRQ_DIS(pitn)   PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;disable_irq(pitn+68)



#endif  //_PIT_H_