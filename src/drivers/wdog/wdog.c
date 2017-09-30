/*
 * File:        wdog.c
 * Purpose:     Provide common watchdog module routines
 *
 * Notes:		Need to add more functionality. Right now it
 * 				is just a disable routine since we know almost
 * 				all projects will need that.       
 *              
 */

#include "common.h"
#include "wdog.h"
       

/*
********************************************************************************
** ������: wdog_disable                                                      
** ��  ��: �رտ��Ź�ģ��                                                  
** ��  ��: ��			  					  
** ��  ��: ��                                                              
** ˵  ��: ��                                                             
** ��  �����ֲ�                                                                
*******************************************************************************
*/
void wdog_disable(void)
{
	/* First unlock the watchdog so that we can write to registers */
	/*�����Ź�ģ��������Ա�д�Ĵ���                               */                               
        wdog_unlock();
	
	/* Clear the WDOGEN bit to disable the watchdog               */
        /*���ʹ��λ���رտ��Ź�                                      */
	WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
}

/*
****************************************************************************
** ������: wdog_unlock                                                      *
** ��  ��: ���Ź�����                                                       * 
** ��  ��: ��							           *	
** ��  ��: ��                                                               *
** ˵  ��: ��  
**      Watchdog timer unlock routine. Writing 0xC520 followed by 0xD928
**      will unlock the write once registers in the WDOG so they are writable
**      within the WCT period.
*****************************************************************************
 */
void wdog_unlock(void)
{
  /* NOTE: DO NOT SINGLE STEP THROUGH THIS FUNCTION!!! */
  /* There are timing requirements for the execution of the unlock. If
   * you single step through the code you will cause the CPU to reset.
   */

	/* This sequence must execute within 20 clock cycles, so disable
         * interrupts will keep the code atomic and ensure the timing.
         */
        /* ע��: ��Ҫ�������Դ˳���!!! �����������CPU��λ*/
        /*�����ж�                                        */
        DisableInterrupts;
	
	/* Write 0xC520 to the unlock register д�����Ĵ��� */
	WDOG_UNLOCK = 0xC520;
	
	/* Followed by 0xD928 to complete the unlock ��ɽ���*/
	WDOG_UNLOCK = 0xD928;
	
	/* Re-enable interrupts now that we are done */	
       	EnableInterrupts;
}
/********************************************************************/
