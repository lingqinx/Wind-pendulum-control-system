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
** 函数名: wdog_disable                                                      
** 功  能: 关闭看门狗模块                                                  
** 参  数: 无			  					  
** 返  回: 无                                                              
** 说  明: 无                                                             
** 参  考：手册                                                                
*******************************************************************************
*/
void wdog_disable(void)
{
	/* First unlock the watchdog so that we can write to registers */
	/*给看门狗模块解锁，以便写寄存器                               */                               
        wdog_unlock();
	
	/* Clear the WDOGEN bit to disable the watchdog               */
        /*清除使能位，关闭看门狗                                      */
	WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
}

/*
****************************************************************************
** 函数名: wdog_unlock                                                      *
** 功  能: 看门狗解锁                                                       * 
** 参  数: 无							           *	
** 返  回: 无                                                               *
** 说  明: 无  
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
        /* 注意: 不要单步调试此程序!!! ，否则会引起CPU复位*/
        /*关总中断                                        */
        DisableInterrupts;
	
	/* Write 0xC520 to the unlock register 写解锁寄存器 */
	WDOG_UNLOCK = 0xC520;
	
	/* Followed by 0xD928 to complete the unlock 完成解锁*/
	WDOG_UNLOCK = 0xD928;
	
	/* Re-enable interrupts now that we are done */	
       	EnableInterrupts;
}
/********************************************************************/
