/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[isr.h] 
* ��  �� ���º궨���жϺţ���ӳ���ж�����������жϺ�����ַ��
*          ʹ��ָ��������������жϷ������������жϷ�����
*          ���棺ֻ����"vectors.c"���������ұ�����"vectors.h"�����ĺ��棡����
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ��
***********************************************************************
*/

#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"  

/*                          ���¶����ж�������
 *  ��ȡ��Ĭ�ϵ��ж�����Ԫ�غ궨��       #undef  VECTOR_xxx
 *  �����¶��嵽�Լ���д���жϺ���       #define VECTOR_xxx    xxx_IRQHandler
 *  ���磺
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    ���¶���Ӳ���Ϸ��жϷ�����
 */

#undef  VECTOR_080
#define VECTOR_080    FTM2_IRQHandler     //FTM2���벶׽�ж�
extern void FTM2_IRQHandler();            //FTM2���벶׽�ж�


#undef  VECTOR_084
#define VECTOR_084    PIT0_IRQHandler     //���¶���84���ж�ΪPIT0_IRQHandler�ж�
extern void PIT0_IRQHandler();            //PIT0 ��ʱ�жϷ�����

#undef  VECTOR_061                        //Ҫ��ȡ����
#define VECTOR_061    UART0_IRQHandler   //���¶���61���жϵ�ISR��UART0��Single interrupt vector for UART status sources
extern void UART0_IRQHandler();          //����0 �жϽ��պ���

#endif  //__ISR_H

/* End of "isr.h" */
