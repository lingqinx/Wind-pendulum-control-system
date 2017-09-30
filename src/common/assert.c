/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：assert.c
 * 描述         ：断言条件不成立的执行函数
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 * 备    注     ：
 *
 * 作者         ：
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
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
//如果断言条件不成立，进入了错误状态，就会打印错误信息和用LED来显示状态
void assert_failed(char *file, int line)
{
    int i,j;
    LED_init();
    while (1)
    {
#ifdef DEBUG_PRINT
        uart0Printf("Assert occurred in file %s,line %d\n Please check..\n\n", file, line);  //打印错误信息
#endif
        for(j = 0xf;j;j--)
        {
          for (i = 0xffffff; i; i--) ;
          LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//全灯闪烁指示进入错误状态
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
        uart0Printf("Assert occured in file %s line %d\\n Plesea check.\n", file, line);  //打印错误信息
        uart0Printf("Error type %s\n\n",rst);
#endif
        for(j = 0x5f;j;j--)
        {
          for (i = 0x7ffff; i; i--) ;
          LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//全灯闪烁指示进入错误状态
          for (i = 0x7ffff; i; i--) ;
        }
    }
}
/********************************************************************/
