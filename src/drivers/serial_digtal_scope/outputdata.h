/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[outputdata.c] 
* ��  �� ��ģ��ʾ������������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��
           ֻ���ô���1 ������9600
***********************************************************************
*/

#ifndef _outputdata_H
#define _outputdata_H

extern int OutData[4];
unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT);
void OutPut_Data(void);
#endif 
