/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：uart.h
 * 描述         ：串口相关函数的头文件
 * 备注         ：
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	

#ifndef __UART_H__
#define __UART_H__

typedef enum  UARTn
{//初始化默认配置       可以复用其他通道，请自行修改 uart_init
                      //--TXD--      --RXD--       --TXD----RXD   
  UART0,    //           PTD6         PTD7
  UART1,    //           PTC4         PTC3
  UART2,    //           PTD3         PTD2
  UART3,    //           PTC17        PTC16
  UART4,    //           PTE24        PTE25
#if K60PIN == 144
  UART5     //           PTE8         PTE9
#endif
    
}UARTn;

extern volatile struct UART_MemMap *UARTx[6];
/********************************************************************/



/*************************************************************************
*  函数名称：uart_init
*  功能说明：初始化串口，设置波特率
*  参数说明：UARTn       模块号（UART0~UART5）
*            baud        波特率，如9600、19200、56000、115200等
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：在官方例程上修改
*************************************************************************/
void uart_init (UARTn uartn, u32 baud);
/*
************************************************************************
*  函数名称：uartGetChar
*  功能说明：无限时间等待串口接受一个字节
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：接收到的字节
*  修改时间：2012-3-24
*  备    注：官方例程
************************************************************************
*/
char uartRecvChar (UARTn uartn);

/*
************************************************************************
*  函数名称：uartPendchar
*  功能说明：有限时间等待串口接受一个字节
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：接收到的字节
*  修改时间：2012-3-23
*  备    注：
************************************************************************
*/
char uartPendChar (UARTn uartn,char * ch);
/*
************************************************************************
*  函数名称：uartRecvString
*  功能说明：接受字符串
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：接收到的字节
*  修改时间：2012-1-20
*  备    注：
************************************************************************
*/
void uartRecvString (UARTn uartn,char * buff);


/*
************************************************************************
*  函数名称：uartSendChar
*  功能说明：串口发送一个字节
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：官方例程
************************************************************************
*/
void uartSendChar (UARTn uartn, char ch);
/*
************************************************************************
*  函数名称：uartSendChar
*  功能说明：串口发送一个字节
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：当发送回车时，自动发送一个换行   
************************************************************************
*/
void uartSendCh (UARTn uartn, char ch);

/*
************************************************************************
*  函数名称：uart_sendN
*  功能说明：串行 接收一个字符串
*  参数说明：UARTn       模块号（UART0~UART5）
*            buff        发送缓冲区
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：
*************************************************************************/
void uartSendString (UARTn uartn,char* buff);
/*
****************************************************************************
* 函数名: uart0Printf                                                       
* 功  能: 格式化打印一个字符串                                             
* 参  数:                                                                  
* 返  回:                                                                 
* 说  明: 默认为UART0                                                      
****************************************************************************
*/
void uartPrintf(char *pcFmt,...);
void uart0Printf(char *pcFmt,...);
void uart1Printf(char *pcFmt,...);
void uart2Printf(char *pcFmt,...);
void uart3Printf(char *pcFmt,...);
void uart4Printf(char *pcFmt,...);
#if K60PIN == 144
void uart5Printf(char *pcFmt,...);
#endif
/*
************************************************************************
*  函数名称：uart_irq_EN
*  功能说明：开串口接收中断
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：
************************************************************************
*/
void uart_irq_EN(UARTn uartn);


/*************************************************************************
*  函数名称：uart_irq_DIS
*  功能说明：关串口接收中断
*  参数说明：UARTn       模块号（UART0~UART5）
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
void uart_irq_DIS(UARTn uartn);




#define UART_IRQ_EN(UARTn)   UART_C2_REG(UARTx[UARTn])|=UART_C2_RIE_MASK; enable_irq((UARTn<<1)+45)     //宏定义开串口接收中断
#define UART_IRQ_DIS(UARTn)  UART_C2_REG(UARTx[UARTn])&=~UART_C2_RIE_MASK; disable_irq((UARTn<<1)+45)   //宏定义关接收引脚的IRQ中断




/********************************************************************/

#endif /* __UART_H__ */
