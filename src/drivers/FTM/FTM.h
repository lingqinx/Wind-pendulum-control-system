/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[FTM.h] 
* ��  �� ��FTM��ʱ��
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ����ģ�������FTM��ʱ��PWM��������Ƚϣ����벶׽���������룬
            ���ٵȹ���
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
�������ü� driver_cfg.h
*/
typedef enum CHn
{
         //   --FTM0--  --FTM1--  --FTM2--
  CH0,   //     =       =          =
  CH1,   //     =       =          =
  CH2,   //     =       ��         ��
  CH3,   //     =       ��         ��
  CH4,   //     =       ��         ��
  CH5,   //     =       ��         ��
  CH6,   //     =       ��         ��
  CH7    //     =       ��         ��
         // ����ʾ������
}CHn;



/*********************** PWM **************************/
//���Ȳ�Ҫ����Ķ�������͵������صġ�һ�Ķ���Ӱ�쵽����ģ��
#define FTM_PRECISON 10000u                         //����ռ�ձȾ��ȣ�100������Ϊ1%��1000u�򾫶�Ϊ0.1%������ռ�ձ� duty �βδ��룬��ռ�ձ�Ϊ duty/FTM_PRECISON

void FTM_init(FTMn ftmn,u32 freq) ;

void  FTM_PWM_init(FTMn,CHn,u32 freq,u32 duty);     
void  FTM_PWM_Duty(FTMn,CHn,         u32 duty);     
void  FTM_PWM_freq(FTMn,    u32 freq);              


/*********************** ���벶׽ **************************/

typedef enum Input_cfg
{
  Rising,               //�����ز�׽
  Falling,              //�½��ز�׽
  Rising_or_Falling     //�����ز�׽
}Input_cfg;


void FTM_Input_init(FTMn,CHn,Input_cfg);

//��������
void FTM_QUAD_DIR_init(FTMn ftmn);
void FTM_QUAD_init(FTMn ftmn);

void FTM_irq_EN(FTMn ftmn);

#define FTM_IRQ_EN(FTMn)              FTM_SC_REG(FTMx[FTMn])|= FTM_SC_TOIE_MASK; enable_irq(FTMn + 62) //����FTM�ж�         
#define FTM_IRQ_DIS(FTMn)             FTM_SC_REG(FTMx[FTMn])&= ~FTM_SC_TOIE_MASK; disable_irq(FTMn + 62) //�ط�FTM�ж�


#define FTM_IRQ_chEN(FTMn,CHn)        FTM_CnSC_REG(FTMx[FTMn],CHn) |= FTM_CnSC_CHIE_MASK       //���� FTMn_CHn �ж�
#define FTM_IRQ_chDIS(FTMn,CHn)       FTM_CnSC_REG(FTMx[FTMn],CHn) &= ~FTM_CnSC_CHIE_MASK      //�ر� FTMn_CHn �ж�

#endif  //_FTM_H_



