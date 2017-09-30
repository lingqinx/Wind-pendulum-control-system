/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[PIT.h] 
* ��  �� ��PIT�����жϼ�ʱ������ʱ�ж�
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ��
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


void      pit_init(PITn pitn,u32 freq);                                                //��ʼ��PITn�������ö�ʱʱ��(��λΪbusʱ������)

#define   PIT_Flag_Clear(PITn)          PIT_TFLG(PITn)|=PIT_TFLG_TIF_MASK        //���жϱ�־

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
*  �������ƣ�pit_irq_EN
*  ����˵����PITn��ʱ�ж�ʹ��
*  ����˵����PITn        ģ��ţ�PIT0~PIT3��
*  �������أ���
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��
*************************************************************************/
void pit_irq_EN(PITn pitn);

/*************************************************************************
*  �������ƣ�pit_irq_DIS
*  ����˵����PITn��ʱ�жϹر�
*  ����˵����PITn        ģ��ţ�PIT0~PIT3��
*  �������أ���
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��
*************************************************************************/
void pit_irq_DIS(PITn pitn);

#define PIT_IRQ_EN(pitn)    PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;enable_irq(pitn+68)
#define PIT_IRQ_DIS(pitn)   PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;disable_irq(pitn+68)



#endif  //_PIT_H_