/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[ov7620.h] 
* 描  述 ：ov7620函数定义
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：ov7620函数定义
***********************************************************************
*/

#ifndef __ov7620_H__
#define __ov7620_H__

#include "global.h"
#include "common.h"
#include "uart.h"


#ifdef K60IIC   //还没有实现片内IIC
  #include "i2c.h"
  #define  ov7620I2C            I2C0
  #define  ov7620_ADDRESS       0x21   //0x42 >> 1
#elif defined(SCCB)
  #include "ioi2c.h"
  #define  ov7620_ADDRESS       0x42   //0x42 >> 1
  
#endif




/***********************************************************************************************
**
**  ov7620 Sensor Internal Registers
*/
enum
{
  ov7620_AGC_gain_control=0,            //0x00
  ov7620_Blue_gain_control,             //0x01
  ov7620_Red_gain_control,              //0x02
  ov7620_Saturation_control,            //0x03
  ov7620_Reserved_Register0,            //0x04
  ov7620_Reserved_Register1,            //0x05
  ov7620_Brightness_control,            //0x06
  ov7620_Angalog_Sharpness_control,     //0x07
  ov7620_Reserved0,                     //0x08
  ov7620_Reserved1,                     //0x09
  ov7620_Reserved2,                     //0x0A
  ov7620_Reserved3,                     //0x0B
  ov7620_White_Balance_background_control_Blue_channel,            //0x0C
  ov7620_White_Balance_background_control_Red_channel,             //0x0D
  ov7620_Reserved4,                     //0x0E
  ov7620_Reserved5,                     //0x0F
  ov7620_Auto_Exposure_Control_Register,//0x10
  ov7620_Clock_rate_control,            //0x11
  ov7620_Common_control_A,              //0x12
  ov7620_Common_control_B,              //0x13
  ov7620_Common_control_C,              //0x14
  ov7620_Common_control_D,              //0x15
  ov7620_Frame_Drop,                    //0x16
  ov7620_Horizontal_Window_start,       //0x17
  ov7620_Horizontal_Window_end,         //0x18
  ov7620_Vertical_Window_start,         //0x19
  ov7620_Vertical_Window_end,           //0x1A
  ov7620_Pixel_shift,                   //0x1B
  ov7620_Manufacture_ID_high_byte,      //0x1C
  ov7620_Manufacture_ID_low_byte,       //0x1D
  ov7620_Reserved6,                     //0x1E
  ov7620_Reserved7,                     //0x1F
  ov7620_Common_control_E,              //0x20
  ov7620_Y_Channel_Offset_Adjustment,   //0x21
  ov7620_U_Channel_Offset_Adjustment,   //0x22
  ov7620_AEW_Crystal_Current_control,   //0x23
  ov7620_AEW_Auto_Exposure_White_Pixel_Ratio,            //0x24
  ov7620_AEC_Auto_Exposure_Black_Pixel_Ratio,            //0x25
  ov7620_Common_control_F,              //0x26
  ov7620_Common_control_G,              //0x27
  ov7620_Common_control_H,              //0x28
  ov7620_Common_control_I,              //0x29
  ov7620_Frame_Rate_Adjust_Register_1,  //0x2A
  ov7620_Frame_Rate_Adjust_Register_2,  //0x2B
  ov7620_Black_Expanding_Register,      //0x2C
  ov7620_Common_Control_J,              //0x2D
  ov7620_V_Channel_Offset_Adjustment    //0x2E
 
};
#define  ov7620_READ_BYTE(address)     SCCB_ByteRead(ov7620_ADDRESS,address)
#define  ov7620_WRITE_BYTE(address,bytedata)     SCCB_ByteWrite(ov7620_ADDRESS,address,bytedata)

void ov7620_init();

unsigned char ov7620_read_byte(unsigned char address);

void ov7620_write_byte(unsigned char address,unsigned char bytedata);


#endif