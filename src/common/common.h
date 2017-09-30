/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[common.h] 
* ��  �� ��ͨ������ͷ�ļ����ʺ�ȫ���Ĺ���
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��
***********************************************************************
*/


#ifndef _COMMON_H_
#define _COMMON_H_


/********************************************************************/

/*
 * Debug prints ON (#define) or OFF (#undef)
 */
#define DEBUG_PRINT
#define DEBUG
//#define CPU_INFO
#define IAR
#define TWR_K60X256



/*****************************������������*****************************/
typedef 	unsigned 	char		u8;	  //�޷�����
typedef 	unsigned 	short int	u16;
typedef 	unsigned 	long  int	u32;

typedef 			char		s8;	  //�з�����
typedef 			short int	s16;
typedef 			long  int	s32;

typedef         unsigned        char            byte;
typedef         unsigned        short int       word;
typedef    	__INT64_T_TYPE__     	s64;
typedef    	__UINT64_T_TYPE__       u64;

typedef         unsigned char                   uchar;
  /*!< Definition for an unsigned char. */

typedef	union
{
	u32	DW;
	u16	W[2];
	u8	B[4];
	struct
	{
		u32 b0:1; u32 b1:1; u32 b2:1; u32 b3:1; u32 b4:1; u32 b5:1; u32 b6:1; u32 b7:1; 
		u32 b8:1; u32 b9:1; u32 b10:1;u32 b11:1;u32 b12:1;u32 b13:1;u32 b14:1;u32 b15:1;
		u32 b16:1;u32 b17:1;u32 b18:1;u32 b19:1;u32 b20:1;u32 b21:1;u32 b22:1;u32 b23:1;
		u32 b24:1;u32 b25:1;u32 b26:1;u32 b27:1;u32 b28:1;u32 b29:1;u32 b30:1;u32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	Ϊ 4 

/*
 * �������е�RAM�ĺ���
 */
#if defined(__ICCARM__)
	#define 	__RAMFUN	__ramfunc	//IAR �� __ramfunc ������
#else
	#define 	__RAMFUN
#endif

/*
 * Include the generic CPU header file
 */
#include "arm_cm4.h"

/*
 * ѡ��ʵ��ƽ̨�����ļ�
 * Include the platform specific header file
 */
#if (defined(TWR_K40X256))
  #include "k40_tower.h"
#elif (defined(TWR_K60X256))
  #include "k60_bupt.h"
#elif (defined(TWR_K53N512))
 #include "k53_tower.h"
#else
  #error "No valid platform defined"
#endif

/*
 * ѡ��CPUͷ�ļ�
 * Include the cpu specific header file
 */
#if (defined(CPU_MK40N512VMD100))
  #include "MK40DZ10.h"
#elif (defined(CPU_MK60N512VMD100))
  #include "MK60DZ10.h"
#elif (defined(CPU_MK53N512CMD100))
  #include "MK53DZ10.h"
#else
  #error "No valid CPU defined"
#endif


/*
 * ѡ�񹤾�
 * Include any toolchain specfic header files
 */
#if (defined(CW))
  #include "cw.h"
#elif (defined(IAR))
  #include "iar.h"
#else
  #warning "No toolchain specific header included"
#endif

/*
 * Include common utilities
 */
#include "assert.h"
#include "startup.h"
#include "stdlib.h"


#if (defined(IAR))
	#include "intrinsics.h"
#endif


#include  "sysinit.h"           //ϵͳ����
#include "mcg.h"
#include "drivers_cfg.h"   //�ܽŸ�������


/********************************************************************/

#endif /* _COMMON_H_ */
