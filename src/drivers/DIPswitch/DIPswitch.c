
/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[DIPswitch.c] 
* 描  述 ：拨码开关
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：拨码开关 驱动程序
***********************************************************************
*/

#include  "DIPswitch.h"


/*************************************************************************
*  函数名称：DIPswitch_init
*  功能说明：初始化拨码开关端口，设置IO口为输入方向
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
void    DIPswitch_init(void)
{
    gpio_init(DIPswitch_PORT,DIP0,GPI,0);
    gpio_init(DIPswitch_PORT,DIP1,GPI,0);
    gpio_init(DIPswitch_PORT,DIP2,GPI,0);
    gpio_init(DIPswitch_PORT,DIP3,GPI,0);
}


/*************************************************************************
*  函数名称：DIPswitch_val
*  功能说明：得到拨码开关的值
*  参数说明：无
*  函数返回：拨码开关的值
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
u8 DIPswitch_val()
{
    u8 val = 0;
    val |= GPIO_Get(DIPswitch_PORT,DIP3) << 3;
    val |= GPIO_Get(DIPswitch_PORT,DIP2) << 2;
    val |= GPIO_Get(DIPswitch_PORT,DIP1) << 1;
    val |= GPIO_Get(DIPswitch_PORT,DIP0) << 0;                     
#if DIPVAL == 0                     
    return val;
#else
    return ((~val)&0x0F);  //取反
#endif
}
/*************************************************************************
*  函数名称：DIPswitch_valbit
*  功能说明：得到拨码开关的值某一个位的值
*  参数说明：无
*  函数返回：拨码开关的值
*  修改时间：2012-2-2   已测试
*  备    注：
*           用拨码开关可以设置不同的启动条件。如果可以设置多个档位的速度
*************************************************************************/
u8 DIPswitch_valbit(DIPn dipn)
{
#if DIPVAL == 0    
  return GPIO_Get(DIPswitch_PORT,dipn);
#else
  return (GPIO_Get(DIPswitch_PORT,dipn)^1);
#endif
}
                    
                    
/*************************************************************************
*  函数名称：DIPswitch_Ctrl
*  功能说明：拨码开关控制程序
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：如果拨码开关和你希望的值是反相，尝试把宏定义 DIPVAL 取反
*************************************************************************/
u8 DIPswitch_ctrl(void)
{
   DIPswitch_init();
   //在这里添加需要启动选择设置的变量
   switch(DIPswitch_val())
   {
   case 0x00:
     uart0Printf("yout choice is : 0\n");
     break;
   case 0x01:
     uart0Printf("yout choice is : 1\n");
     break;
   case 0x02:
     uart0Printf("yout choice is : 2\n");
     break;
   case 0x03:
     uart0Printf("yout choice is : 3\n");
     break;
     
   case 0x04:
     uart0Printf("yout choice is : 4\n");
     break;
   case 0x05:
     uart0Printf("yout choice is : 5\n");
     break;
   case 0x06:
     uart0Printf("yout choice is : 6\n");
     break;
   case 0x07:
     uart0Printf("yout choice is : 7\n");
     break;
     
   case 0x08:
     uart0Printf("yout choice is : 8\n");
     break;
   case 0x09:
     uart0Printf("yout choice is : 9\n");
     break;
   case 0x0A:
     uart0Printf("yout choice is : A\n");
     break;
   case 0x0B:
     uart0Printf("yout choice is : B\n");
     break;
     
   case 0x0C:
     uart0Printf("yout choice is : C\n");
     break;
   case 0x0D:
     uart0Printf("yout choice is : D\n");
     break;
   case 0x0E:
     uart0Printf("yout choice is : E\n");
     break;
   case 0x0F:
     uart0Printf("yout choice is : F\n");
     break;
   default:
     uart0Printf("yout choice is : Other\n");
     break;
   }
   
   uartPrintf("如果拨码开关和你希望的值是反相，尝试把宏定义 DIPVAL 取反\n");
   return DIPswitch_val();
}