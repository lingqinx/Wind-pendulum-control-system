/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��assert.c
 * ����         ������������������ִ�к���
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 * ��    ע     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	

/*
 * File:        assert.c
 * Purpose:     Provide macro for software assertions
 *
 * Notes:       ASSERT macro defined in assert.h calls assert_failed()
 */

#include "common.h"
#include "uart.h"
#include "led.h"

//const char ASSERT_FAILED_STR[] = "Assertion failed in %s at line %d\n";

/********************************************************************/
//������������������������˴���״̬���ͻ��ӡ������Ϣ����LED����ʾ״̬
void assert_failed(char *file, int line)
{
    int i,j;
    LED_init();
    while (1)
    {
#ifdef DEBUG_PRINT
        uart0Printf("Assert occurred in file %s,line %d\n Please check..\n\n", file, line);  //��ӡ������Ϣ
#endif
        for(j = 0xf;j;j--)
        {
          for (i = 0xffffff; i; i--) ;
          LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//ȫ����˸ָʾ�������״̬
          for (i = 0xffffff; i; i--) ;
        }
    }
}

void assert_failed_rst(char *file, int line,char *rst)
{
    int i,j;
    LED_init();
    while (1)
    {
#ifdef DEBUG_PRINT
        uart0Printf("Assert occured in file %s line %d\\n Plesea check.\n", file, line);  //��ӡ������Ϣ
        uart0Printf("Error type %s\n\n",rst);
#endif
        for(j = 0x5f;j;j--)
        {
          for (i = 0x7ffff; i; i--) ;
          LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//ȫ����˸ָʾ�������״̬
          for (i = 0x7ffff; i; i--) ;
        }
    }
}
/********************************************************************/
