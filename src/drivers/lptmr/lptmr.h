/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[lptmr.h] 
* ��  �� ��lptmr�����Ķ�ʱ����Ŀǰֻ��һ����ʱ����ʱ����
* ԭ��   ���ٷ�����
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ��
***********************************************************************
*/
#ifndef __LPTMR_H__
#define __LPTMR_H__

/********************************************************************/

#define LPTMR_irq     85u
#define INT_COUNT  65000

typedef enum LPT0_ALTn
{
    //ֻ��1��2�ܽţ���û��0��3�ܽ�
    LPT0_ALT1=1,        // PTA19        //������ʹ�ã����ⲿ��������
    LPT0_ALT2=2         // PTC5
}LPT0_ALTn;

typedef enum LPT_CFG
{
    LPT_Rising  = 0,    //�����ش���
    LPT_Falling = 1     //�½��ش���
}LPT_CFG;

/*          ������ʱ         */

void time_delay_ms(uint32 ms);      //��ʱ


/*       �����������        */
#define  LPTMR_COUNTER_CLEAN()      LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;\
                                    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK            //������������0


void lptmr_counter_clean(void);									
void lptmr_counter_init(LPT0_ALTn,u16 count,u8 PrescaleValue,LPT_CFG);                              //��������ʼ������

void lptmr_irq_EN();

void lptmr_irq_DIS();

#define LPTMR_IRQ_EN()    LPTMR_CSR_REG(LPTMR0_BASE_PTR) |= LPTMR_CSR_TIE_MASK; enable_irq(LPTMR_irq)	
#define LPTMR_IRQ_DIS()   LPTMR_CSR_REG(LPTMR0_BASE_PTR) &= ~LPTMR_CSR_TIE_MASK; disable_irq(LPTMR_irq)	

/********************************************************************/

#endif /* __LPTMR_H__ */
