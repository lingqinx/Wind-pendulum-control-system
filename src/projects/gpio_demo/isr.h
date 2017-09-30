/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：isr.h
 * 描述         ：重新宏定义中断号，重映射中断向量表里的中断函数地址，
 *                使其指向我们所定义的中断服务函数。声明中断服务函数
 *                警告：只能在"vectors.c"包含，而且必须在"vectors.h"包含的后面！！！
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：野火嵌入式开发工作室
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	



#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"

/*                          重新定义中断向量表
 *  先取消默认的中断向量元素宏定义       #undef  VECTOR_xxx
 *  在重新定义到自己编写的中断函数       #define VECTOR_xxx    xxx_IRQHandler
 *  例如：
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    重新定义硬件上访中断服务函数
 *
 *       extren void  HardFault_Handler(void);      声明函数，然后在isr.c里定义
 */

// 串口输入中断服务
#undef VECTOR_061
#define VECTOR_061 UART0_IRQHandler
extern void UART0_IRQHandler(void);

// 串口输入中断服务
#undef VECTOR_067
#define VECTOR_067 UART3_IRQHandler
extern void UART3_IRQHandler(void);   
   
// PIT中断服务
#undef VECTOR_084
#define VECTOR_084 PIT0_IRQHandler
extern void PIT0_IRQHandler(void);

#undef VECTOR_085
#define VECTOR_085 PIT1_IRQHandler
extern void PIT1_IRQHandler(void);

#undef  VECTOR_104
#define VECTOR_104 PORTB_IRQHandler       //PORTB 中断
extern void PORTB_IRQHandler();           //PORTB 中断服务函数

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
#define VECTOR_101    LPT_Handler     //重新定义101号中断为lpt_IRQHandler中断
extern void LPT_Handler(void);

#endif  //__ISR_H

/* End of "isr.h" */
