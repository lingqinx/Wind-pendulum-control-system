/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[global.h] 
* 描  述 ：全局变量
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：全局变量
***********************************************************************
*/

#ifndef __GLOBAL_H__
#define __GLOBAL_H__
#include "common.h"


#define CCD_DMA    //把这一个宏定义注释后就是中断法采集



//行列可以根据需要自己定义
#define ROW        120
#define COLUMN     160
#define CENTER     80
#define COLUMN_START 1
#define COLUMN_END 155

//黑白的跳变域值 
#define THRESHOLD 45 
//有效搜索宽度（有效区）       
#define SEARCHWITHDEN 12 
//无效搜索区域（黑区） 
#define SEARCHWITHDDIS 6
//扩展搜索区 
#define SEARCHWITHDEXT 30

//实际速度
extern u32 trueSpeed;
//输出选项
extern u8 showChoice;
//图像数据
extern unsigned char Pic_Buffer[ROW][COLUMN];
//采集完成标志位
extern volatile unsigned int photeCompleteFlag;
//选取的行号
extern u8 selectLine[ROW];
//二值化域值
extern unsigned int PhotoBlackMax;

extern signed int  Line_Center[ROW];  
extern signed int  Line_Center_L[ROW];  
extern signed int  Line_Center_R[ROW]; 
#endif