/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[ov7620.c] 
* 描  述 ：ov7620函数定义
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：ov7620函数定义
***********************************************************************
*/

#include "ov7620.h"

void ov7620_init()
{
#ifdef SCCB
    byte v;
    //配置IO   SKL PD8   SDA PD9

    gpio_init(PORTD,8,GPO,1);
    gpio_init(PORTD,9,GPO,1);

    v = ov7620_READ_BYTE(ov7620_Manufacture_ID_low_byte);// 出厂配置好寄存器 read only, always returns “A2”
    
    if(v == 0xA2)
    {
       uartPrintf("\nov7620 init ok!\n");
    }
    else
    {
       uartPrintf("\nov7620 init failed !\n");
    }
#endif    
}
unsigned char ov7620_read_byte(unsigned char address)
{
  #ifdef SCCB
  return  SCCB_ByteRead(ov7620_ADDRESS,address);
  #else
  return 0;
  #endif
}

void ov7620_write_byte(unsigned char address,unsigned char bytedata)
{
  #ifdef SCCB
  SCCB_ByteWrite(ov7620_ADDRESS,address,bytedata);
  #endif
}
















/*

   OV7620_Write_SCCB_COMS(OV7620_ID,19,0);  //取消自动曝光 
   Dly_ms(10); 
   OV7620_Write_SCCB_COMS(OV7620_ID,16,80);  //设置曝光时间 

*/