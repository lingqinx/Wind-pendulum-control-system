/*
********************************************************************************
 * �ļ���       ��uart.c
 * ����         �����ں���
 * ��ƸĽ�     ��snowwolf
 * Email        ��snowwolf2012@qq.com
 * ��ע         ��
 * �ο�         ���ο����ݴ�ѧ������
 *                ��˼�����ٷ�������
 *                Ұ��Ƕ��ʽ����������
********************************************************************************
*/	
#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "common.h"
#include "uart.h"
#include "assert.h"


volatile struct UART_MemMap *UARTx[6]={UART0_BASE_PTR,UART1_BASE_PTR,UART2_BASE_PTR,UART3_BASE_PTR,UART4_BASE_PTR,UART5_BASE_PTR}; //�������ָ�����鱣�� UARTx �ĵ�ַ

/*************************************************************************
*  �������ƣ�uart_init
*  ����˵������ʼ�����ڣ����ò�����
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            baud        �����ʣ���9600��19200��56000��115200��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ڹٷ��������޸�
*************************************************************************/
void uart_init (UARTn uartn, u32 baud)
{
    register uint16 sbr, brfa;
    uint8 temp;
    u32 sysclk;     //ʱ��

    /* ���� UART���ܵ� GPIO �ӿ� ����ʱ�� */
    switch(uartn)
    {
    case UART0:
        /*������ʹ��
        if(UART0_RX==PTA1)   
            PORTA_PCR1 = PORT_PCR_MUX(0x2);      //��PTA1��ʹ��UART0_RXD
        else 
        */
        if(UART0_RX==PTA15)
            PORTA_PCR15 = PORT_PCR_MUX(0x3);     //��PTA15��ʹ��UART0_RXD
        else if(UART0_RX==PTB16)
            PORTB_PCR16 = PORT_PCR_MUX(0x3);     //��PTB16��ʹ��UART0_RXD
        else if(UART0_RX==PTD6)
            PORTD_PCR6 = PORT_PCR_MUX(0x3);      //��PTD7��ʹ��UART0_RXD
        else
            assert_failed(__FILE__, __LINE__);   //���ùܽ�����
        /*������ʹ��
        if(UART0_TX==PTA2)
            PORTA_PCR2 = PORT_PCR_MUX(0x2);     //��PTA2��ʹ��UART0_RXD
        else 
        */      
        if(UART0_TX==PTA14)
            PORTA_PCR14 = PORT_PCR_MUX(0x3);     //��PTA14��ʹ��UART0_RXD
        else if(UART0_TX==PTB17)
            PORTB_PCR17 = PORT_PCR_MUX(0x3);     //��PTB17��ʹ��UART0_RXD
        else if(UART0_TX==PTD7)
            PORTD_PCR7 = PORT_PCR_MUX(0x3);     //��PTD6��ʹ��UART0_RXD
        else
            assert_failed(__FILE__, __LINE__);  //���ùܽ�����


        SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //ʹ�� UARTn ʱ��
        break;

    case UART1:
        if(UART1_RX==PTC3)
            PORTC_PCR3 = PORT_PCR_MUX(0x3);     //��PTC3��ʹ��UART1_RXD
        else if(UART1_RX==PTE1)
            PORTE_PCR1 = PORT_PCR_MUX(0x3);     //��PTE1��ʹ��UART1_RXD
        else
            assert_failed(__FILE__, __LINE__);  //���ùܽ�����

        if(UART1_TX==PTC4)
            PORTC_PCR4 = PORT_PCR_MUX(0x3);     //��PTC4��ʹ��UART1_RXD
        else if(UART1_TX==PTE0)
            PORTE_PCR0 = PORT_PCR_MUX(0x3);     //��PTE0��ʹ��UART1_RXD
        else
            assert_failed(__FILE__, __LINE__);  //���ùܽ�����

        SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        break;

    case UART2:
        PORTD_PCR3 = PORT_PCR_MUX(0x3);         //��PTD3��ʹ��UART2_TXD����
        PORTD_PCR2 = PORT_PCR_MUX(0x3);         //��PTD2��ʹ��UART2_RXD
        SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        break;

    case UART3:
        if(UART3_RX==PTB10)
            PORTB_PCR10 = PORT_PCR_MUX(0x3);     //��PTB10��ʹ��UART3_RXD
        else if(UART3_RX==PTC16)
            PORTC_PCR16 = PORT_PCR_MUX(0x3);     //��PTC16��ʹ��UART3_RXD
        else if(UART3_RX==PTE5)
            PORTE_PCR5 = PORT_PCR_MUX(0x3);      //��PTE5��ʹ��UART3_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        if(UART3_TX==PTB11)
            PORTB_PCR11 = PORT_PCR_MUX(0x3);     //��PTB11��ʹ��UART3_RXD
        else if(UART3_TX==PTC17)
            PORTC_PCR17 = PORT_PCR_MUX(0x3);     //��PTC17��ʹ��UART3_RXD
        else if(UART3_TX==PTE4)
            PORTE_PCR4 = PORT_PCR_MUX(0x3);     //��PTE4��ʹ��UART3_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        break;

    case UART4:
        if(UART4_RX==PTC14)
            PORTC_PCR14 = PORT_PCR_MUX(0x3);     //��PTC14��ʹ��UART4_RXD
        else if(UART4_RX==PTE25)
            PORTE_PCR25 = PORT_PCR_MUX(0x3);     //��PTE25��ʹ��UART4_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        if(UART4_TX==PTC15)
            PORTC_PCR15 = PORT_PCR_MUX(0x3);     //��PTC15��ʹ��UART4_RXD
        else if(UART4_TX==PTE24)
            PORTE_PCR24 = PORT_PCR_MUX(0x3);     //��PTE24��ʹ��UART4_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        break;
#if K60PIN == 144u
    case UART5:
        if(UART5_RX==PTD8)
            PORTD_PCR8 = PORT_PCR_MUX(0x3);     //��PTD8��ʹ��UART5_RXD
        else if(UART5_RX==PTE9)
            PORTE_PCR9 = PORT_PCR_MUX(0x3);     //��PTE9��ʹ��UART5_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        if(UART5_TX==PTD9)
            PORTD_PCR9 = PORT_PCR_MUX(0x3);     //��PTD9��ʹ��UART5_RXD
        else if(UART5_TX==PTE8)
            PORTE_PCR8 = PORT_PCR_MUX(0x3);     //��PTE8��ʹ��UART5_RXD
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
        break;
#endif
    default:
        break;
    }


    //���õ�ʱ��Ӧ�ý�ֹ���ͽ���
    UART_C2_REG(UARTx[uartn]) &= ~(UART_C2_TE_MASK  | UART_C2_RE_MASK );

    //���ó�8λ��У��ģʽ
    //���� UART ���ݸ�ʽ��У�鷽ʽ��ֹͣλλ����ͨ������ UART ģ����ƼĴ��� C1 ʵ�֣�
    UART_C1_REG(UARTx[uartn]) = 0;	// ȫ��ֱ��ʹ��Ĭ�����þ��У�����ֱ����0

    //���㲨���ʣ�����0��1ʹ���ں�ʱ�ӣ���������ʹ������ʱ��
    if ((uartn == UART0) | (uartn == UART1))
        sysclk=core_clk_khz*1000;                //�ں�ʱ��
    else
	sysclk=bus_clk_khz*1000;      //����ʱ��

    //���� UART ����ͨѶ�����ʡ�ͨ������ UART ģ��Ĳ����ʼĴ���
    sbr = (u16)(sysclk/(baud << 4));

    /* Save off the current value of the UARTx_BDH except for the SBR field */
    temp = UART_BDH_REG(UARTx[uartn]) & ~(UART_BDH_SBR(0x1F));

    UART_BDH_REG(UARTx[uartn]) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(UARTx[uartn]) = (u8)(sbr & UART_BDL_SBR_MASK);

    //brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
    brfa = (((sysclk<<5)/(baud <<4)) - (sbr <<5));

    /* Save off the current value of the UARTx_C4 register except for the BRFA field */
    temp = UART_C4_REG(UARTx[uartn]) & ~(UART_C4_BRFA(0x1F));

    UART_C4_REG(UARTx[uartn]) = temp |  UART_C4_BRFA(brfa);

    /* �����ͺͽ��� */
    UART_C2_REG(UARTx[uartn]) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );

    //�����Ƿ�������պͷ����жϡ�ͨ������ UART ģ��� C2 �Ĵ�����
    //RIE �� TIE λʵ�֡����ʹ���жϣ���������ʵ���жϷ������
}

/*
************************************************************************
*  �������ƣ�uartRecvChar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-3-24
*  ��    ע���ٷ�����
************************************************************************
*/
char uartRecvChar (UARTn uartn)
{
    /* Wait until character has been received �жϽ��ջ������Ƿ���*/
    while (!(UART_S1_REG(UARTx[uartn]) & UART_S1_RDRF_MASK));

    /* Return the 8-bit data from the receiver */
    return UART_D_REG(UARTx[uartn]);
}



/*
************************************************************************
*  �������ƣ�uartPendchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-3-23
*  ��    ע��
************************************************************************
*/
char uartPendChar (UARTn uartn,char * ch)
{
    u32 i=0;

    while(++i<0xffff)                                           //ʱ������
    {
        if(UART_S1_REG(UARTx[uartn]) & UART_S1_RDRF_MASK)         //��ѯ�Ƿ���ܵ�����
        {
            *ch  =   UART_D_REG(UARTx[uartn]);                    //���ܵ�8λ������
            return  1;                                            //���� 1 ��ʾ���ճɹ�
        }
    }

    *ch=0;                                                       //���ղ�����Ӧ������˽�����
    return 0;                                                    //����0��ʾ����ʧ��
}


/*
************************************************************************
*  �������ƣ�uartRecvString
*  ����˵���������ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
************************************************************************
*/
void uartRecvString (UARTn uartn,char * buff)
{
    char *buff2=buff;//��¼��ʼ��ַ
    char bC; 
    
    while ((bC=uartRecvChar(uartn))!='\r')
    { 	          
  	if(bC=='\b')//�����˸��
        {
              if((int)buff2<(int)buff)
              {
                 uartSendChar(uartn,'\b'); 
                 uartSendChar(uartn,' '); 
                 uartSendChar(uartn,'\b'); 
                 buff--;
              }
        }
        else
        {
                *buff++=bC;
                uartSendChar(uartn,bC);
        }
    } 
    
    *buff='\0';
    uartSendCh(uartn,'\n');
}


/*
************************************************************************
*  �������ƣ�uartSendChar
*  ����˵�������ڷ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע���ٷ�����
************************************************************************
*/
void uartSendChar (UARTn uartn, char ch)
{
    //�ȴ����ͻ�������
    while(!(UART_S1_REG(UARTx[uartn]) & UART_S1_TDRE_MASK));
    //��������
    UART_D_REG(UARTx[uartn]) = (u8)ch;
}
/*
************************************************************************
*  �������ƣ�uartSendChar
*  ����˵�������ڷ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע�������ͻس�ʱ���Զ�����һ������   
************************************************************************
*/
void uartSendCh (UARTn uartn, char ch)
{
    if(ch == '\n')
       uartSendChar(uartn,'\r');
    uartSendChar(uartn,ch);
}


/*
************************************************************************
*  �������ƣ�uart_sendN
*  ����˵�������� ����һ���ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            buff        ���ͻ�����
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע��
*************************************************************************/
void uartSendString (UARTn uartn,char* buff)
{
    while(*buff)uartSendCh(uartn,*buff++);
}


/*
****************************************************************************
* ������: uart0Printf                                                       
* ��  ��: ��ʽ����ӡһ���ַ���                                             
* ��  ��:                                                                  
* ��  ��:                                                                 
* ˵  ��: Ĭ��ΪUART0                                                      
****************************************************************************
*/
void uartPrintf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART_PORT,pbString);
        va_end(ap);
}
void uart0Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART0,pbString);
        va_end(ap);
}
void uart1Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART1,pbString);
        va_end(ap);
}
void uart2Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART2,pbString);
        va_end(ap);
}
void uart3Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART3,pbString);
        va_end(ap);
}
void uart4Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART4,pbString);
        va_end(ap);
}
#if K60PIN == 144
void uart5Printf(char *pcFmt,...)
{
        va_list ap;
        char pbString[256];

        va_start(ap,pcFmt);
        vsprintf(pbString,pcFmt,ap);
        uartSendString(UART5,pbString);
        va_end(ap);
}
#endif
/*
************************************************************************
*  �������ƣ�uart_irq_EN
*  ����˵���������ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע��
************************************************************************
*/
void uart_irq_EN(UARTn uartn)
{
    UART_C2_REG(UARTx[uartn])|=UART_C2_RIE_MASK;      //����UART�����ж�
    enable_irq((uartn<<1)+45);			      //���������ŵ�IRQ�ж�
}


/*************************************************************************
*  �������ƣ�uart_irq_DIS
*  ����˵�����ش��ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_irq_DIS(UARTn uartn)
{
    UART_C2_REG(UARTx[uartn])&=~UART_C2_RIE_MASK;     //��ֹUART�����ж�
    disable_irq((uartn<<1)+45);			      //�ؽ������ŵ�IRQ�ж�
}

