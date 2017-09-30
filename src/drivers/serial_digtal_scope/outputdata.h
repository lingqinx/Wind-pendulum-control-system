/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[outputdata.c] 
* 描  述 ：模拟示波器驱动程序
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：
           只能用串口1 波特率9600
***********************************************************************
*/

#ifndef _outputdata_H
#define _outputdata_H

extern int OutData[4];
unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT);
void OutPut_Data(void);
#endif 
