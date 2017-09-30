/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��assert.h
 * ����         �����Ժ궨��ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 * ��    ע     ��assert_failed() �� assert.c �ﶨ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/	


#ifndef _ASSERT_H_
#define _ASSERT_H_

/********************************************************************/

void assert_failed(char *, int);
void assert_failed_rst(char *file, int line,char *rst);

//#ifdef DEBUG
#define ASSERT(expr) \
    if (!(expr)) \
        assert_failed(__FILE__, __LINE__)

#define ASSERT_RST(expr,str) \
    if (!(expr)) \
        assert_failed_rst(__FILE__, __LINE__,str)

//#else
//#define ASSERT(expr)
//#endif

/********************************************************************/
#endif /* _ASSERT_H_ */

