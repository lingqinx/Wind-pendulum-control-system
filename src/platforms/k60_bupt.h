/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[k60_bupt.c] 
* 描  述 ：开发板配置文件
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：
***********************************************************************
*/

#ifndef __K60_TOWER_H__
#define __K60_TOWER_H__

#include "mcg.h"

/*************************************************************************
*  功能说明：定义 printf函数 的 串口输出端口 和 串口信息
*  备    注：
*************************************************************************/
#define UART_PORT           UART0               //默认UART端口号
#define UART_BAUD           115200             //默认波特率

/*************************************************************************

*  功能说明：定义芯片型号
*  备    注：
*************************************************************************/
#define CPU_MK60N512VMD100
#define K60PIN 100u


/*************************************************************************
*  功能说明：定义时钟频率
*  备    注：如果 MCG_CLK_MHZ 定义为 PLLUSR ，则初始化系统时用下面的自定义因子
*************************************************************************/
//#define NO_PLL_INIT
#define K60_CLK             1           // 使用外部时钟参考源
#define REF_CLK             XTAL8       // 没用到，但一些宏定义需要它

#define MCG_CLK_MHZ         PLL96      // 设置时钟频率
#define MCG_CLK             96         // 设置时钟频率
#define MAX_BUS_CLK         50         // bus不要超过200M，这里设为100M
#define MAX_FLASH_CLK       25          // flash不能超过32M，这里设为不超过30M

/*
#define MCG_CLK_MHZ         PLL200      // 设置时钟频率
#define MAX_BUS_CLK         100         // bus不要超过200M，这里设为100M
#define MAX_FLASH_CLK       25          // flash不能超过32M，这里设为不超过30M
*/


// 以下部分不建议使用  snowwolf 注
/*********************   自定义 时钟频率 分频因子   ********************/
#include "Fire_kinetis_MCG_CFG.h"   //参考这文件可以 选配 PRDIV、VDIV 。定义MCG分频因子 ：
#define PRDIV             11        // MCG_CLK_MHZ = 50u/(PRDIV+1)*(VDIV+24)
#define VDIV              31
#define CORE_DIV          0         //  core = mcg/ ( CORE_DIV  + 1 )
#define BUS_DIV           0         //  bus  = mcg/ ( BUS_DIV   + 1 )
#define FLEX_DIV          0         //  flex = mcg/ ( FLEX_DIV  + 1 )
#define FLASH_DIV         9         //  flash= mcg/ ( FLASH_DIV + 1 )
/***********************************************************************/





#endif /* __K60_TOWER_H__ */
