/*
 * File:	start.c
 * Purpose:	Kinetis start up routines.
 *
 * Notes:		
 */
#include "common.h"
#include "start.h"
#include "wdog.h"
#include "sysinit.h"
#include "uart.h"


/********************************************************************/
/*!
 * \brief   Kinetis Start
 * \return  None
 *
 * This function calls all of the needed starup routines and then
 * branches to the main process.
 */
void start(void)
{

    /* 关闭看门狗 */
    wdog_disable();

    /* 复制中断向量表、初始化数据、以__ramfunc声明的子函数复制到RAM区 */
    common_startup();

    /* CPU初始化，设置频率 */
    sysinit();

#if (defined(DEBUG) && defined(DEBUG_PRINT)) 

    uartPrintf("\n\n********************************************************\n");
    uartPrintf("* \t\t BUPT K60 *\n");
    uartPrintf("* Core Freq: %3dMHz \tBus Freq: %3dMHz              *\n",\
           core_clk_mhz,core_clk_mhz/(mcg_div.bus_div+1));
    uartPrintf("* flex Freq: %3dMHz \tflash Freq: %3dMHz              *\n",\
           core_clk_mhz/(mcg_div.flex_div+1),core_clk_mhz/(mcg_div.flash_div+1));

    
    uartPrintf("* Started by:");
    /* Determine the last cause(s) of reset */
    if (MC_SRSH & MC_SRSH_SW_MASK)
        uartPrintf("Software Reset                             *\n");
    if (MC_SRSH & MC_SRSH_LOCKUP_MASK)
        uartPrintf("Core Lockup Event Reset                    *\n");
    if (MC_SRSH & MC_SRSH_JTAG_MASK)
        uartPrintf("JTAG Reset                                 *\n");
    if (MC_SRSL & MC_SRSL_POR_MASK)
        uartPrintf("Power-on Reset                             *\n");
    if (MC_SRSL & MC_SRSL_PIN_MASK)
        uartPrintf("External Pin Reset                         *\n");
    if (MC_SRSL & MC_SRSL_COP_MASK)
        uartPrintf("Watchdog(COP) Reset                        *\n");
    if (MC_SRSL & MC_SRSL_LOC_MASK)
        uartPrintf("Loss of Clock Reset                        *\n");
    if (MC_SRSL & MC_SRSL_LVD_MASK)
        uartPrintf("Low-voltage Detect Reset                   *\n");
    if (MC_SRSL & MC_SRSL_WAKEUP_MASK)
        uartPrintf("LLWU Reset                                 *\n");	

    /* 这两个数组的地址 在  链接器Linker文件，即ICF文件 定义 */
    extern uint32 __VECTOR_TABLE[];
    extern uint32 __VECTOR_RAM[];

    /* 检测是否需要 复制中断向量表,即可以知道是ROM启动还是RAM启动*/
    uartPrintf("* Start Method: ");
    if (__VECTOR_RAM != __VECTOR_TABLE)     
      uartPrintf("flash                                  *\n");
    else                                    
      uartPrintf("SRAM                                   *\n");

#ifdef CPU_INFO
    /* Determine specific Kinetis device and revision */
    cpu_identify();
#endif

#endif  //DUBUG && DEBUG_PRINT

    /* 跳进main函数 */
    uartPrintf("* Designed By: snowwolf    Modified By: feichashao *\n");  
    uartPrintf("* Latest Update: ");  
    uartPrintf("%s  %s                      *\n",__DATE__,__TIME__);  
    main();

    /* 保证CPU不会停止执行 */
    while(1);
}
/********************************************************************/
/*!
 * \brief   Kinetis Identify
 * \return  None
 *
 * This is primarly a reporting function that displays information
 * about the specific CPU to the default terminal including:
 * - Kinetis family
 * - package
 * - die revision
 * - P-flash size
 * - Ram size
 */
void cpu_identify (void)
{
    
    /* Determine the Kinetis family */
    uartPrintf("芯片信息：");
    switch((SIM_SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT)
    {
    	case 0x0:
    		uartPrintf("K10");
    		break;
    	case 0x1:
    		uartPrintf("K20");
    		break;
    	case 0x2:
    		uartPrintf("K30");
    		break;
    	case 0x3:
    		uartPrintf("K40");
    		break;
    	case 0x4:
    		uartPrintf("K60");
    		break;
    	case 0x5:
    		uartPrintf("K70");
    		break;
    	case 0x6:
    		uartPrintf("K50");
    		break;
    	case 0x7:
    		uartPrintf("K53");
    		break;
	default:
		uartPrintf("Unrecognized Kinetis family device.\n");
		break;  	
    }
    uartPrintf(" \n管脚数：");
    /* Determine the package size */
    switch((SIM_SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT)
    {
    	case 0x2:
    		uartPrintf("32pin");
    		break;
    	case 0x4:
    		uartPrintf("48pin");
    		break;
    	case 0x5:
    		uartPrintf("64pin");
    		break;
    	case 0x6:
    		uartPrintf("80pin");
    		break;
    	case 0x7:
    		uartPrintf("81pin");
    		break;
    	case 0x8:
    		uartPrintf("100pin");
    		break;
    	case 0x9:
    		uartPrintf("104pin");
    		break;
    	case 0xA:
    		uartPrintf("144pin");
    		break;
    	case 0xC:
    		uartPrintf("196pin");
    		break;
    	case 0xE:
    		uartPrintf("256pin");
    		break;
	default:
		uartPrintf("\nUnrecognized Kinetis package code.");
		break;  	
    }

    /* Determine the revision ID */
    uartPrintf("\n版本信息：");
    switch((SIM_SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT)
    {

    case 0x0:
    		uartPrintf("Silicon rev 1.0   \n");
    		break;
    case 0x1:
    		uartPrintf("Silicon rev 1.1  \n");
    		break;
    case 0x2:
    		uartPrintf("Silicon rev 1.2  \n");
    		break;
    default:
		uartPrintf("\nThis version of software doesn't recognize the revision code.");
		break;
    }


    // Determine the flash revision
    uartPrintf("\nFlash信息：\n");
    flash_identify();
    
    /* Determine the P-flash size */
    switch((SIM_FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
    {
    	case 0x7:
    		uartPrintf("128 kBytes of P-flash	");
    		break;
    	case 0x9:
    		uartPrintf("256 kBytes of P-flash	");
    		break;
        case 0xB:
    		uartPrintf("512 kBytes of P-flash	");
    		break;
    	case 0xF:
    		uartPrintf("512 kBytes of P-flash	");
    		break;
	default:
		uartPrintf("ERR!! Undefined P-flash size\n");
		break;  		
    }
    uartPrintf("\n");
    /* Determine if the part has P-flash only or P-flash and FlexNVM */
    if (SIM_FCFG2 & SIM_FCFG2_PFLSH_MASK)
      uartPrintf("P-flash only\n");
    else
      /* if part has FlexNVM determine the FlexNVM size*/
      switch((SIM_FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
      {
      	case 0x0:
      		uartPrintf("0 kBytes of FlexNVM\n");
      		break;
    	case 0x7:
      		uartPrintf("128 kBytes of FlexNVM\n");
    		break;
        case 0x9:
      		uartPrintf("256 kBytes of FlexNVM\n");
    		break;
    	case 0xF:
      		uartPrintf("256 kBytes of FlexNVM\n");
    		break;
	default:
		uartPrintf("ERR!! Undefined FlexNVM size\n");
		break;  		
      }


    /* Determine the RAM size */
    switch((SIM_SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
    {
    	case 0x5:
    		uartPrintf("32 kBytes of RAM\n\n");
    		break;
    	case 0x7:
    		uartPrintf("64 kBytes of RAM\n\n");
    		break;
    	case 0x8:
    		uartPrintf("96 kBytes of RAM\n\n");
    		break;
    	case 0x9:
    		uartPrintf("128 kBytes of RAM\n\n");
    		break;
		default:
			uartPrintf("ERR!! Undefined RAM size\n\n");
			break;  		
    }
}

/********************************************************************/
/*!
 * \brief   flash Identify
 * \return  None
 *
 * This is primarly a reporting function that displays information
 * about the specific flash parameters and flash version ID for
 * the current device. These parameters are obtained using a special
 * flash command call "read resource." The first four bytes returned
 * are the flash parameter revision, and the second four bytes are
 * the flash version ID.
 */
void  flash_identify (void)
{
    u32 i;
    /*     避免提示警告，这里定义几个变量保存 volatile  变量的值       */
    uint8_t b4,b5,b6,b7;

    /* Get the flash parameter version */

    /* Write the flash FCCOB registers with the values for a read resource command */
    FTFL_FCCOB0 = 0x03;
    FTFL_FCCOB1 = 0x00;
    FTFL_FCCOB2 = 0x00;
    FTFL_FCCOB3 = 0x00;
    FTFL_FCCOB8 = 0x01;

    /* All required FCCOBx registers are written, so launch the command */
    FTFL_FSTAT = FTFL_FSTAT_CCIF_MASK;

    /* Wait for the command to complete */
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));

    b4=FTFL_FCCOB4;
    b5=FTFL_FCCOB5;
    b6=FTFL_FCCOB6;
    b7=FTFL_FCCOB7;
    uartPrintf("Flash parameter version %d.%d.%d.%d\n",b4,b5,b6,b7);

    /* Get the flash version ID */

    /* Write the flash FCCOB registers with the values for a read resource command */
    FTFL_FCCOB0 = 0x03;
    FTFL_FCCOB1 = 0x00;
    FTFL_FCCOB2 = 0x00;
    FTFL_FCCOB3 = 0x04;
    FTFL_FCCOB8 = 0x01;

    /* All required FCCOBx registers are written, so launch the command */
    FTFL_FSTAT = FTFL_FSTAT_CCIF_MASK;

    /* Wait for the command to complete */
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));

    b4=FTFL_FCCOB4;
    b5=FTFL_FCCOB5;
    b6=FTFL_FCCOB6;
    b7=FTFL_FCCOB7;
    uartPrintf("Flash version ID %d.%d.%d.%d\n",b4,b5,b6,b7);

    /* Clear all of the flags in the flash status register */
    FTFL_FSTAT = 0xFF;
   
    //延时一会
    for(i=0;i<10000;i++);
}
/********************************************************************/

