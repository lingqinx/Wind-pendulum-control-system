/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[PIT.c] 
* ��  �� ��PIT�����жϼ�ʱ������ʱ�ж�
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ��
***********************************************************************
*/


#include "common.h"
#include  "PIT.h"     //�����жϼ�ʱ��

/*************************************************************************
*  �������ƣ�pit_init
*  ����˵����PITn��ʱ����ʼ��
*  ����˵����PITn        ģ��ţ�PIT0~PIT3��
             freq        Ƶ�ʣ�Hz��
*  �������أ���
*  �޸�ʱ�䣺2012-1-24
*  ��    ע��
*************************************************************************/
void pit_init(PITn pitn,u32 freq)
{
    //PIT �õ��� Bus Clock ����Ƶ��
    //������� = ����Ƶ�� * ʱ��

    /* ����ʱ��*/
    SIM_SCGC6       |=SIM_SCGC6_PIT_MASK;                             //ʹ��PITʱ��

    /* PITģ����� PIT Module Control Register (PIT_MCR) */
    PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������

    /* ��ʱ������ֵ���� Timer Load Value Register (PIT_LDVALn) */
    PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;                                           //��������ж�ʱ��

    //��ʱʱ�䵽�˺�TIF �� 1 ��д1��ʱ��ͻ���0
    PIT_Flag_Clear(pitn);                                             //���жϱ�־λ

    /* ��ʱ�����ƼĴ��� Timer Control Register (PIT_TCTRL0) */
    PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
    		                                  
}

/*************************************************************************
* ��������: PIT_Reload_Freq                                                    
* ��������: ���������¼���                                         
* ����˵��: pitn:��ʾpitͨ���š�        
* ���ܸ�Ҫ: ������ؼĴ�����ֵ 
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��Ҫ���ļ�����ֵ��Ҫ�ȹر�ʹ���ٸģ��ٴ�
*************************************************************************/
void PIT_Reload_Freq(PITn pitn,u32 freq)
{
    PIT_TCTRL(pitn) &= ~PIT_TCTRL_TEN_MASK;
    PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;  
    PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
}

/*************************************************************************
* ��������: get_get_PITCNT                                                       
* ��������: ��ǰ��ʱ��ʣ��ʱ��                                          
* ����˵��: pitn:��ʾpitͨ���š�        
* ���ܸ�Ҫ: ������ؼĴ�����ֵ 
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��ms����ms,us����us
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
*  �������ƣ�pit_irq_EN
*  ����˵����PITn��ʱ�ж�ʹ��
*  ����˵����PITn        ģ��ţ�PIT0~PIT3��
*  �������أ���
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��
*************************************************************************/
void pit_irq_EN(PITn pitn)
{
     PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;    //ʹ�� PITn��ʱ��,����PITn�ж�  
     enable_irq(pitn+68);                      //���������ŵ�IRQ�ж�
}

/*************************************************************************
*  �������ƣ�pit_irq_DIS
*  ����˵����PITn��ʱ�жϹر�
*  ����˵����PITn        ģ��ţ�PIT0~PIT3��
*  �������أ���
*  �޸�ʱ�䣺2012-3-24
*  ��    ע��
*************************************************************************/
void pit_irq_DIS(PITn pitn)
{
     PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;    //�� PITn��ʱ��, 
     disable_irq(pitn+68);                      //��IRQ�ж�
}