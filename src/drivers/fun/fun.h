/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��delay.h
 * ����         ��ģ����ʱ����ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	


#ifndef __DELAY_H__
#define __DELAY_H__

#include "common.h"

void  delay(void);          //��ʱԼ500ms
void  delayms(uint32  ms);
void  delayus(uint32  us);
signed int get_mid(signed int a,signed int b,signed int c);
unsigned char get_mid8(unsigned char a,unsigned char b,unsigned char c);
#endif