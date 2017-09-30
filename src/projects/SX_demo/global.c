/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[global.c] 
* 描  述 ：全局变量
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：这里定义我们用到的全局变量
***********************************************************************
*/
#include "global.h"

//实际速度
u32 trueSpeed = {0};
//输出选项
u8 showChoice = 0;
//图像数据
unsigned char Pic_Buffer[ROW][COLUMN] = {0};
//采集完成标志位
volatile unsigned int photeCompleteFlag = 0;
//选取的行号
u8 selectLine[ROW];
//二值化域值
unsigned int PhotoBlackMax = 125;
//中心线

signed int  Line_Center[ROW]={0};  
signed int  Line_Center_L[ROW]={0};  
signed int  Line_Center_R[ROW]={0};  