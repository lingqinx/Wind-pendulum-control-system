/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��isr.h
 * ����         �����º궨���жϺţ���ӳ���ж�����������жϺ�����ַ��
 *                ʹ��ָ��������������жϷ������������жϷ�����
 *                ���棺ֻ����"vectors.c"���������ұ�����"vectors.h"�����ĺ��棡����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	



#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"

/*                          ���¶����ж�������
 *  ��ȡ��Ĭ�ϵ��ж�����Ԫ�غ궨��       #undef  VECTOR_xxx
 *  �����¶��嵽�Լ���д���жϺ���       #define VECTOR_xxx    xxx_IRQHandler
 *  ���磺
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    ���¶���Ӳ���Ϸ��жϷ�����
 *
 *       extren void  HardFault_Handler(void);      ����������Ȼ����isr.c�ﶨ��
 */

// ���������жϷ���
#undef VECTOR_061
#define VECTOR_061 UART0_IRQHandler
extern void UART0_IRQHandler(void);

// ���������жϷ���
#undef VECTOR_067
#define VECTOR_067 UART3_IRQHandler
extern void UART3_IRQHandler(void);   
   
// PIT�жϷ���
#undef VECTOR_084
#define VECTOR_084 PIT0_IRQHandler
extern void PIT0_IRQHandler(void);

#undef VECTOR_085
#define VECTOR_085 PIT1_IRQHandler
extern void PIT1_IRQHandler(void);

#undef  VECTOR_104
#define VECTOR_104 PORTB_IRQHandler       //PORTB �ж�
extern void PORTB_IRQHandler();           //PORTB �жϷ�����

#undef VECTOR_105
#define VECTOR_105 PORTC_IRQHandler
#undef VECTOR_107
#define VECTOR_107 PORTE_IRQHandler
#undef VECTOR_103
#define VECTOR_103 PORTA_IRQHandler
extern void PORTC_IRQHandler();
extern void PORTA_IRQHandler();
extern void PORTE_IRQHandler();

#undef  VECTOR_101
#define VECTOR_101    LPT_Handler     //���¶���101���ж�Ϊlpt_IRQHandler�ж�
extern void LPT_Handler(void);

#endif  //__ISR_H

/* End of "isr.h" */
