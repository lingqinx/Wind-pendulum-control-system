/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[FTM.h] 
* 描  述 ：FTM定时器
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：本模块包含：FTM计时，PWM波，输出比较，输入捕捉，正交解码，
            测速等功能
***********************************************************************
*/

#ifndef _FTM_H_
#define _FTM_H_

extern volatile struct FTM_MemMap *FTMx[3];

typedef enum FTMn
{
  FTM0,
  FTM1,
  FTM2
}FTMn;
/*
引脚配置见 driver_cfg.h
*/
typedef enum CHn
{
         //   --FTM0--  --FTM1--  --FTM2--
  CH0,   //     =       =          =
  CH1,   //     =       =          =
  CH2,   //     =       ×         ×
  CH3,   //     =       ×         ×
  CH4,   //     =       ×         ×
  CH5,   //     =       ×         ×
  CH6,   //     =       ×         ×
  CH7    //     =       ×         ×
         // ×表示不存在
}CHn;



/*********************** PWM **************************/
//精度不要随意改动，舵机和电机是相关的。一改动会影响到两个模块
#define FTM_PRECISON 10000u                         //定义占空比精度，100即精度为1%，1000u则精度为0.1%，用于占空比 duty 形参传入，即占空比为 duty/FTM_PRECISON

void FTM_init(FTMn ftmn,u32 freq) ;

void  FTM_PWM_init(FTMn,CHn,u32 freq,u32 duty);     
void  FTM_PWM_Duty(FTMn,CHn,         u32 duty);     
void  FTM_PWM_freq(FTMn,    u32 freq);              


/*********************** 输入捕捉 **************************/

typedef enum Input_cfg
{
  Rising,               //上升沿捕捉
  Falling,              //下降沿捕捉
  Rising_or_Falling     //跳变沿捕捉
}Input_cfg;


void FTM_Input_init(FTMn,CHn,Input_cfg);

//正交解码
void FTM_QUAD_DIR_init(FTMn ftmn);
void FTM_QUAD_init(FTMn ftmn);

void FTM_irq_EN(FTMn ftmn);

#define FTM_IRQ_EN(FTMn)              FTM_SC_REG(FTMx[FTMn])|= FTM_SC_TOIE_MASK; enable_irq(FTMn + 62) //开放FTM中断         
#define FTM_IRQ_DIS(FTMn)             FTM_SC_REG(FTMx[FTMn])&= ~FTM_SC_TOIE_MASK; disable_irq(FTMn + 62) //关放FTM中断


#define FTM_IRQ_chEN(FTMn,CHn)        FTM_CnSC_REG(FTMx[FTMn],CHn) |= FTM_CnSC_CHIE_MASK       //开启 FTMn_CHn 中断
#define FTM_IRQ_chDIS(FTMn,CHn)       FTM_CnSC_REG(FTMx[FTMn],CHn) &= ~FTM_CnSC_CHIE_MASK      //关闭 FTMn_CHn 中断

#endif  //_FTM_H_



