//*******************************************************************************************
//  MK60DN512ZVL(K/L/Q)10 Demo - Vectors, Ultra-Low Pwr UART 115200 Echo ISR, 50MHz ACLK
//
//           MK60DN512ZVL(K/L/Q)10
//            -----------------
//        /|\|              XIN|-
//         | |                 | 32kHz
//         --|RST          XOUT|-
//           |                 |
//           |                 |
//           |           P1.1  |<----L1 
//           |           P1.3  |<----L2
//           |           P1.5  |<----L3
//           |                 |
//           |                 |
//           |           P1.4  |---->H1 
//           |           P1.2  |---->H2
//           |           P1.0  |---->H3
//           |                 |
//           |                 |
//
//  Copyright (c) 2012.04  WH, All Rights Reserved.
//  WebSite     : http://united-electronic.taobao.com/
//  Email       : dragonhzw@163.com
//  QQȺ         : 226846867
//  Description : The vectors module
//  History     :                                                           
//     [Author]   [Date]      [Version]    [Description]                     
//     [1] dragonhzw   2012/04/09  Ver 1.0.0    Initial file.
//
//  Built with IAR Embedded Workbench for ARM 6.30  
//***********************************************************************************************
#include "K60_datatype.h"
#include "common.h"
#include "include.h"

#ifdef  __cplusplus
extern "C" {
#endif

  //  u8  sdhc_dat_buffer1[512];      
  //  u8  sdhc_dat_buffer2[512] = {44,55,99,100,6,7,8,9,10,11,12,13,14,15,26,27,18,19,20};

  __ramfunc static void SetSysDividers(u32 uiOutDiv1, u32 uiOutDiv2, u32 uiOutDiv3, u32 uiOutDiv4);

//SDHC�������ÿ������ִ��ʱ��XFERTYP�Ĵ��������������
static const unsigned long ESDHC_COMMAND_XFERTYP[] = 
{
    // CMD0
    SDHC_XFERTYP_CMDINX(ESDHC_CMD0) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD1) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD2) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD3) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD4) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
    // CMD5 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD5) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD6) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD7) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD8) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD9) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
    // CMD10 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD10) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD11) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD12) | SDHC_XFERTYP_CMDTYP(ESDHC_XFERTYP_CMDTYP_ABORT) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD13) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    0,
    // CMD15 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD15) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD16) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD17) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD18) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    0,
    // CMD20 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD20) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    0,
    SDHC_XFERTYP_CMDINX(ESDHC_ACMD22) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_ACMD23) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD24) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    // CMD25 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD25) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD26) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD27) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD28) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD29) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    // CMD30 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD30) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    0,
    SDHC_XFERTYP_CMDINX(ESDHC_CMD32) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD33) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD34) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    // CMD35 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD35) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD36) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD37) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD38) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD39) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    // CMD40 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD40) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_ACMD41) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD42) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    0,
    0,
    // CMD45 
    0,
    0,
    0,
    0,
    0,
    // CMD50 
    0,
    SDHC_XFERTYP_CMDINX(ESDHC_ACMD51) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD52) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD53) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    0,
    // CMD55 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD55) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD56) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    0,
    0,
    0,
    // CMD60 
    SDHC_XFERTYP_CMDINX(ESDHC_CMD60) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    SDHC_XFERTYP_CMDINX(ESDHC_CMD61) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
    0,
    0
};

/***FUNC+*********************************************************************/
/* Name   : PLL_Init                                                         */
/* Descrp : Initialize PLL                                                   */
/* Input  : None.                                                            */   
/* Output : None.                                                            */
/* Return : None.                                                            */   
/***FUNC-*********************************************************************/
void PLL_Init(void)
{

    MCG_C2 = 0;                        // x x RANGE HGO EREFS LP IRCS
                                       // 0 0   00    0    0   0   0
                                       // RANGE=00:Low frequency range selected for the crystal oscillator of 32 kHz to 40 kHz
                                       // HGO  =0 :Configure crystal oscillator for low-power operation
                                       // EREFS=0 :External reference clock requested 
    
    SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
    LLWU_CS |= LLWU_CS_ACKISO_MASK;
    
    MCG_C1 = MCG_C1_CLKS(2) |          // CLKS FRDIV IREFS IRCLKEN IREFSTEN
             MCG_C1_FRDIV(3);          //  10   011    1     0        0  
                                       // CLKS =10 :External reference clock is selected
                                       // FRDIV=011:Divide Factor is 8
    
    while (MCG_S & MCG_S_IREFST_MASK)  // wait until source of FLL reference clock is the external reference clock
    {
        ;  
    }
    
    while (((MCG_S & MCG_S_CLKST_MASK) // wait until external reference clock is selected
          >> MCG_S_CLKST_SHIFT) != 0x2)
    {
        ;   
    }
    
    MCG_C5 = MCG_C5_PRDIV(0x18);       // x PLLCLKEN PLLSTEN PRDIV
                                       // 0    0        0    11000
                                       // PRDIV=11000:Divide Factor is 25 
       
    SetSysDividers(0, 1, 1, 3);        // MCG=PLL, core=MCG, bus=MCG/2, FlexBus=MCG/2, Flash clock=MCG/4
    
    MCG_C6 = MCG_C6_PLLS_MASK |        // LOLIE PLLS CME VDIV  
             MCG_C6_VDIV(24);          //   0    1    0  11000    
                                       // PLLS=1    :PLL is selected 
                                       // VDIV=11000:Multiply Factor is 48
                                       // PLL = 2MHz x 48 = 96MHz
    
    while (!(MCG_S & MCG_S_PLLST_MASK))// wait until source of PLLS clock is PLL clock
    {
        ;   
    }
    
    while (!(MCG_S & MCG_S_LOCK_MASK)) // wait until PLL is locked
    {
        ;
    }
    
    MCG_C1 &= ~MCG_C1_CLKS_MASK;       // Output of FLL or PLL is selected
    
    while (((MCG_S & MCG_S_CLKST_MASK) // wait until Output of the PLL is selected 
          >> MCG_S_CLKST_SHIFT) != 0x3)
    {
        ;
    }
}

/***FUNC+*********************************************************************/
/* Name   : SetSysDividers                                                   */
/* Descrp : This routine must be placed in RAM.It is a                       */
/*          workaround for errata e2448.Flash prefetch must                  */
/*          be disabled when the flash clock divider is                      */
/*          changed.This cannot be performed while executing                 */
/*          out of flash.There must be a short delay after                   */
/*          the clock dividers are changed before prefetch                   */
/*          can be re-enabled.                                               */
/* Input  : None.                                                            */   
/* Output : None.                                                            */
/* Return : None.                                                            */   
/***FUNC-*********************************************************************/
__ramfunc static void SetSysDividers(u32 uiOutDiv1, u32 uiOutDiv2, u32 uiOutDiv3, u32 uiOutDiv4)
{

    u32 uiTemp;
  
    int  i;
  
 
    // store present value of FMC_PFAPR
    uiTemp = FMC_PFAPR; 
  
    // set M0PFD through M7PFD to 1 to disable prefetch
    FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
  
    // set clock dividers to desired value  
    SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(uiOutDiv1) | SIM_CLKDIV1_OUTDIV2(uiOutDiv2) 
                | SIM_CLKDIV1_OUTDIV3(uiOutDiv3) | SIM_CLKDIV1_OUTDIV4(uiOutDiv4);

    // wait for dividers to change
    for (i = 0; i < uiOutDiv4; i++)
    {
        ;   
    }
 
    // re-store original value of FMC_PFAPR
    FMC_PFAPR = uiTemp; 
  
} 
/***FUNC+*********************************************************************/
/* Name   : main                                                             */
/* Descrp :                                                                  */
/* Input  : None.                                                            */   
/* Output : None.                                                            */
/* Return : None.                                                            */   
/***FUNC-*********************************************************************/
#if 0

void main(void)
{
    short sIndex =0;
    u32 i = 0;
    DRESULT sd_state;    //SD������״̬


    /*********************************************************/
    /* Close all irq.                                        */
    /*********************************************************/
    DisableInterrupts;  
    
    /*********************************************************/
    /* Watchdog disable.                                     */
    /*********************************************************/
    WatchdogDisable();

    /*********************************************************/
    /*Copy the vector table to RAM .                         */
    /*********************************************************/
    VECTableInit();

    /*
    * Enable all of the port clocks. These have to be enabled to configure
    * pin muxing options, so most code will need all of these on anyway.
    */
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                      | SIM_SCGC5_PORTB_MASK
                      | SIM_SCGC5_PORTC_MASK
                      | SIM_SCGC5_PORTD_MASK
                      | SIM_SCGC5_PORTE_MASK );
    /*********************************************************/
    /*Initialize PLL.                                        */
    /*********************************************************/ 
    PLL_Init();

    /*********************************************************/
    /*Init Uart3 BaudRate and clk .                          */
    /*********************************************************/
    UART_Init(PERIPH_SYS_CLK, BAUD_RATE_115200, UART4);
    
    sd_state = disk_initialize(0); 
    /*********************************************************/
    /* open all irq.                                         */
    /*********************************************************/
    EnableInterrupts;
    
    uartPrintf("\r\n");
    uartPrintf("|********************************************************************|\r\n");
    uartPrintf("|******MK60DN512ZVL(K/L/Q)10 development board SD Card Example!******|\r\n");
    uartPrintf("|********************************************************************|\r\n");    

    //�Գ�ʼ���������д���
    if (RES_OK == sd_state)
    {
        uartPrintf("SD init success.\r\n");
    }
    else
    {
        uartPrintf("sd_state :%d \r\n", sd_state);
        uartPrintf("SD init failure.\r\n");
    }
    
    while(1)
    {
        
        uartPrintf("\r\nPlease Select Enter Number[1~2]: ");
        sIndex = Uart_GetIntNum();
        uartPrintf("\r\n");
        if(0x01 == sIndex)
        {
            sd_state = disk_read(0,sdhc_dat_buffer1,0,1);//������������SD����״̬
            //�Զ��������д���
            if (RES_OK == sd_state)
            {
                uartPrintf("Read disk success.\r\n");
                uartPrintf("SD data: \r\n");
                for(i = 0;i < 512;i++) //�����ɹ�����ӡ����������
                {
                    uartPrintf("%02X ", sdhc_dat_buffer1[i]);
                }  
                uartPrintf("\r\n");
            }
            else
            {
                uartPrintf("Read disk failed!\n\r");
            }
        }

        else if(0x02 == sIndex)
        {
            sd_state = disk_write(0, sdhc_dat_buffer2, 0, 1);  //д������SD��������״̬
            //�Զ��������д���
            if (RES_OK == sd_state)
            {
                uartPrintf("Read disk success.\r\n");
                uartPrintf("SD data: \r\n");
                for(i = 0;i < 512;i++) //�����ɹ�����ӡ����������
                {
                    uartPrintf("%02X ", sdhc_dat_buffer1[i]);
                }  
                uartPrintf("\r\n");
            }
            else
            {
                uartPrintf("Read disk failed!\n\r");
            }
        }
    
      
    }
    
}

#endif

//=========================================================================
//�������ƣ�hw_sdhc_init                                                        
//���ܸ�Ҫ����ʼ��SDHCģ�顣                                                
//����˵����coreClk���ں�ʱ��                                                    
//         baud��SDHCͨ��Ƶ��                                 
//�������أ��ɹ�ʱ���أ�ESDHC_OK;��������ֵΪ����                                                               
//=========================================================================
u32 SDHC_init(u32 coreClk, u32 baud)
{
    SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
        
    //ʹ��SDHCģ���ʱ����
    SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
    
    //��λSDHC
    SDHC_SYSCTL = SDHC_SYSCTL_RSTA_MASK | SDHC_SYSCTL_SDCLKFS(0x80);    
    while (SDHC_SYSCTL & SDHC_SYSCTL_RSTA_MASK){};
    
    //��ʼ��SDHC��ؼĴ���
    SDHC_VENDOR = 0;
    SDHC_BLKATTR = SDHC_BLKATTR_BLKCNT(1) | SDHC_BLKATTR_BLKSIZE(512);
    SDHC_PROCTL = SDHC_PROCTL_EMODE(ESDHC_PROCTL_EMODE_INVARIANT) 
                | SDHC_PROCTL_D3CD_MASK; 
    SDHC_WML = SDHC_WML_RDWML(1) | SDHC_WML_WRWML(1);
    
    //����SDHCģ���ͨ������
    SDHC_set_baudrate (coreClk,baud);
    
    //���CMDͨ����DATͨ���Ƿ�׼������
    while (SDHC_PRSSTAT & (  SDHC_PRSSTAT_CIHB_MASK 
                           | SDHC_PRSSTAT_CDIHB_MASK)){};

    //���ø������Ź���ΪSDHC
    PORTE_PCR(0) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_PS_MASK 
                              | PORT_PCR_PE_MASK 
                              | PORT_PCR_DSE_MASK); // ESDHC.D1  
    PORTE_PCR(1) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_PS_MASK 
                              | PORT_PCR_PE_MASK 
                              | PORT_PCR_DSE_MASK); // ESDHC.D0  
    PORTE_PCR(2) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_DSE_MASK); // ESDHC.CLK 
    PORTE_PCR(3) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_PS_MASK 
                              | PORT_PCR_PE_MASK 
                              | PORT_PCR_DSE_MASK); // ESDHC.CMD 
    PORTE_PCR(4) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_PS_MASK 
                              | PORT_PCR_PE_MASK 
                              | PORT_PCR_DSE_MASK); // ESDHC.D3  
    PORTE_PCR(5) = 0xFFFF & (   PORT_PCR_MUX(4) 
                              | PORT_PCR_PS_MASK 
                              | PORT_PCR_PE_MASK 
                              | PORT_PCR_DSE_MASK);  // ESDHC.D2  
    
    //���SDHCģ����жϱ�־
    SDHC_IRQSTAT = 0xFFFF;
    //ʹ���ж�λ
    SDHC_IRQSTATEN = SDHC_IRQSTATEN_DEBESEN_MASK 
                   | SDHC_IRQSTATEN_DCESEN_MASK 
                   | SDHC_IRQSTATEN_DTOESEN_MASK 
                   | SDHC_IRQSTATEN_CIESEN_MASK 
                   | SDHC_IRQSTATEN_CEBESEN_MASK 
                   | SDHC_IRQSTATEN_CCESEN_MASK 
                   | SDHC_IRQSTATEN_CTOESEN_MASK 
                   | SDHC_IRQSTATEN_BRRSEN_MASK 
                   | SDHC_IRQSTATEN_BWRSEN_MASK 
                   | SDHC_IRQSTATEN_CRMSEN_MASK
                   | SDHC_IRQSTATEN_TCSEN_MASK 
                   | SDHC_IRQSTATEN_CCSEN_MASK;
    
    //80��ʱ�����ڵĳ�ʼ��
    SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
    while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK){};

    //��鿨�Ƿ��Ѿ�����
    if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
    {
        SDHC_Card.CARD_TYPE = ESDHC_CARD_UNKNOWN;
    }
    SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
    
    return ESDHC_OK;
}

//=========================================================================
//�������ƣ�SDHC_receive_block                                                         
//���ܸ�Ҫ������n���ֽ�                                                 
//����˵����buff: ���ջ�����                                                 
//		   btr:���ճ���                                                     
//�������أ� 1:�ɹ�;0:ʧ��                                                    
//=========================================================================
u32 SDHC_receive_block (u8 *buff,u32 btr)
{
    u32 bytes, i, j;
    u32 *ptr = (u32*)buff;
    
    //����ʶ��Ŀ�����󣬽�������ǰ�����DATͨ���Ƿ�æ������ʹ���У�
    if (    (SDHC_Card.CARD_TYPE == ESDHC_CARD_SD) 
         || (SDHC_Card.CARD_TYPE == ESDHC_CARD_SDHC) 
         || (SDHC_Card.CARD_TYPE == ESDHC_CARD_MMC) 
         || (SDHC_Card.CARD_TYPE == ESDHC_CARD_CEATA))
    {
        while (SDHC_PRSSTAT & SDHC_PRSSTAT_DLA_MASK){};
    }    
    
    //��ȡ����ʱ��ÿ�ζ�ȡ4���ֽ�
    bytes = btr;
    while (bytes)
    {
        i = bytes > 512 ? 512 : bytes;
        for (j = (i + 3) >> 2; j != 0; j--)
        {
            if (SDHC_IRQSTAT & (    SDHC_IRQSTAT_DEBE_MASK 
                                  | SDHC_IRQSTAT_DCE_MASK 
                                  | SDHC_IRQSTAT_DTOE_MASK))
            {
                SDHC_IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK 
                              | SDHC_IRQSTAT_DCE_MASK 
                              | SDHC_IRQSTAT_DTOE_MASK 
                              | SDHC_IRQSTAT_BRR_MASK;
                return 0;
            }
            
            while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BREN_MASK)){};

            *ptr++ = SDHC_DATPORT;
        }
        bytes -= i;
    }
    
    return 1;       // Return with success     
}

//=========================================================================
//�������ƣ�SDHC_send_block                                                         
//���ܸ�Ҫ������n���ֽ�                                                 
//����˵����buff: ���ͻ�����                                                 
//		   btr:���ͳ���                                                     
//�������أ� 1:�ɹ�;0:ʧ��                                                    
//=========================================================================
u32 SDHC_send_block (const u8 *buff,u32 btr)
{
    u32  bytes, i;
    //u32 *ptr = (u32*)buff;
   
    //��ȡ����ʱ��ÿ�ζ�ȡ4���ֽ�
    bytes = btr;
    //uartPrintf("%d\n",bytes);
    while (bytes)
    {
      //uartPrintf("%d\n",c);
       u32 *ptr = (u32*)buff;
       // i = bytes > 512 ? 512 : bytes;
      i=512;
#if PRINT
        //uartPrintf("%d\n",bytes);
#endif 
        bytes -= i;
        for (i = (i + 3) >> 2; i != 0; i--)
        {
            if (SDHC_IRQSTAT & (    SDHC_IRQSTAT_DEBE_MASK 
                                  | SDHC_IRQSTAT_DCE_MASK 
                                  | SDHC_IRQSTAT_DTOE_MASK))
            {
                SDHC_IRQSTAT    |= SDHC_IRQSTAT_DEBE_MASK 
                                | SDHC_IRQSTAT_DCE_MASK 
                                | SDHC_IRQSTAT_DTOE_MASK 
                                | SDHC_IRQSTAT_BWR_MASK;
#if PRINT
                
#endif 
               uartPrintf("���󷵻�1\n");
              return 0;
            }
            while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
            {
              uartPrintf("�ȴ�����\n");
#if PRINT
              //
#endif
            }  //�ȴ�����׼����

            

           
            SDHC_DATPORT = *ptr++;
           // 
           
           
            
            
          
        }   
      //  uartPrintf("%d\n",c);
        
       //     c--;
      //  uartPrintf("%d\n",c);  
            
#if PRINT
        //uartPrintf("%d\n",bytes);
#endif
    
    }
    
     uartPrintf("�������ݷ������\n");
              
#if PRINT
    
#endif    
         
    
    
    
	return 1;
}

//=========================================================================
//�������ƣ�SDHC_ioctl
//���ܸ�Ҫ������SDHCģ��
//����˵����cmd: ��������
//		   param_ptr:����ָ��
//�������أ� ��ʱ���أ�ESDHC_OK;��������ֵΪ����
//=========================================================================
u32 SDHC_ioctl(u32 cmd,void *param_ptr)
{
    ESDHC_COMMAND_STRUCT    command; 
    u8 mem, io, mmc, ceata, mp, hc; //��־��ǰ������
    u32  i, val;
    u32  result = ESDHC_OK;
    u32  *param32_ptr = param_ptr;
#if PRINT
    uartPrintf("��ʼ�������ÿ�ģʽ�����Ϳ�ģ������\n");
#endif
    
    switch (cmd) 
    {
        //��ʼ��SD����дϵͳ
        case IO_IOCTL_ESDHC_INIT:        
            result = SDHC_init (CORE_CLOCK_HZ, BAUD_RATE_HZ);
            if (ESDHC_OK != result)
            {
                break;
            }
            
            mem = FALSE;
            io = FALSE;
            mmc = FALSE;
            ceata = FALSE;
            hc = FALSE;
            mp = FALSE;

            //CMD0,ʹ��SD���������ģʽ����λSD��
            command.COMMAND = ESDHC_CMD0;
            command.TYPE = ESDHC_TYPE_NORMAL;
            command.ARGUMENT = 0;
            command.READ = FALSE;
            command.BLOCKS = 0;
            if (SDHC_send_command (&command))
            {
                result = ESDHC_ERROR_INIT_FAILED;
                break;
            }
            
            for(i = 0;i < 2000000;i++)
            {
            }

            //CMD8
            command.COMMAND = ESDHC_CMD8;
            command.TYPE = ESDHC_TYPE_NORMAL;
            command.ARGUMENT = 0x000001AA;
            command.READ = FALSE;
            command.BLOCKS = 0;
            val = SDHC_send_command (&command);
            
            if (val == 0)
            {
                // SDHC��
                if (command.RESPONSE[0] != command.ARGUMENT)
                {
                    result = ESDHC_ERROR_INIT_FAILED;
                    break;
                }
                hc = TRUE;
            }

            mp = TRUE;
            
            if (mp)
            {
                //CMD55������Ƿ�ΪMMC��
                command.COMMAND = ESDHC_CMD55;
                command.TYPE = ESDHC_TYPE_NORMAL;
                command.ARGUMENT = 0;
                command.READ = FALSE;
                command.BLOCKS = 0;
                val = SDHC_send_command (&command);
                if (val > 0)
                {
                    result = ESDHC_ERROR_INIT_FAILED;
                    break;
                }
                if (val < 0)
                {
                    // MMC �� CE-ATA
                    io = FALSE;
                    mem = FALSE;
                    hc = FALSE;
                    
                    //CMD1
                    command.COMMAND = ESDHC_CMD1;
                    command.TYPE = ESDHC_TYPE_NORMAL;
                    command.ARGUMENT = 0x40300000;
                    command.READ = FALSE;
                    command.BLOCKS = 0;
                    if (SDHC_send_command (&command))
                    {
                        result = ESDHC_ERROR_INIT_FAILED;
                        break;
                    }
                    if (0x20000000 == (command.RESPONSE[0] & 0x60000000))
                    {
                        hc = TRUE;
                    }
                    mmc = TRUE;

                    //CMD39
                    command.COMMAND = ESDHC_CMD39;
                    command.TYPE = ESDHC_TYPE_NORMAL;
                    command.ARGUMENT = 0x0C00;
                    command.READ = FALSE;
                    command.BLOCKS = 0;
                    if (SDHC_send_command (&command))
                    {
                        result = ESDHC_ERROR_INIT_FAILED;
                        break;
                    }
                    if (0xCE == (command.RESPONSE[0] >> 8) & 0xFF)
                    {
                        //CMD39
                        command.COMMAND = ESDHC_CMD39;
                        command.TYPE = ESDHC_TYPE_NORMAL;
                        command.ARGUMENT = 0x0D00;
                        command.READ = FALSE;
                        command.BLOCKS = 0;
                        if (SDHC_send_command (&command))
                        {
                            result = ESDHC_ERROR_INIT_FAILED;
                            break;
                        }
                        if (0xAA == (command.RESPONSE[0] >> 8) & 0xFF)
                        {
                            mmc = FALSE;
                            ceata = TRUE;
                        }
                    }
                }
                else
                {
                    //��ΪSD��ʱ
                    // ACMD41
                    command.COMMAND = ESDHC_ACMD41;
                    command.TYPE = ESDHC_TYPE_NORMAL;
                    command.ARGUMENT = 0;
                    command.READ = FALSE;
                    command.BLOCKS = 0;
                    if (SDHC_send_command (&command))
                    {
                        result = ESDHC_ERROR_INIT_FAILED;
                        break;
                    }
                    if (command.RESPONSE[0] & 0x300000)
                    {
                        val = 0;
                        do 
                        {
                            for(i = 0;i < 500000;i++)
                            {
                            }
                            val++;
                            
                            // CMD55 + ACMD41 - Send OCR 
                            command.COMMAND = ESDHC_CMD55;
                            command.TYPE = ESDHC_TYPE_NORMAL;
                            command.ARGUMENT = 0;
                            command.READ = FALSE;
                            command.BLOCKS = 0;
                            if (SDHC_send_command (&command))
                            {
                                result = ESDHC_ERROR_INIT_FAILED;
                                break;
                            }

                            command.COMMAND = ESDHC_ACMD41;
                            command.TYPE = ESDHC_TYPE_NORMAL;
                            if (hc)
                            {
                                command.ARGUMENT = 0x40300000;
                            }
                            else
                            {
                                command.ARGUMENT = 0x00300000;
                            }
                            command.READ = FALSE;
                            command.BLOCKS = 0;
                            if (SDHC_send_command (&command))
                            {
                                result = ESDHC_ERROR_INIT_FAILED;
                                break;
                            }
                        } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < 10));
                        if (ESDHC_OK != result)
                        {
                            break;
                        }
                        if (val >= 10)
                        {
                            hc = FALSE;
                        }
                        else
                        {
                            mem = TRUE;
                            if (hc)
                            {
                                hc = FALSE;
                                if (command.RESPONSE[0] & 0x40000000)
                                {
                                    hc = TRUE;
                                }
                            }
                        }
                    }
                }
            }
            
            
            if (mmc)
            {
                SDHC_Card.CARD_TYPE = ESDHC_CARD_MMC;
            }
            if (ceata)
            {
                SDHC_Card.CARD_TYPE = ESDHC_CARD_CEATA;
            }
            if (io)
            {
                SDHC_Card.CARD_TYPE = ESDHC_CARD_SDIO;
            }
            if (mem)
            {
                SDHC_Card.CARD_TYPE = ESDHC_CARD_SD;
                if (hc)
                {
                    SDHC_Card.CARD_TYPE = ESDHC_CARD_SDHC;
                }
            }
            if (io && mem)
            {
                SDHC_Card.CARD_TYPE = ESDHC_CARD_SDCOMBO;
                if (hc)
                {
                    SDHC_Card.CARD_TYPE = ESDHC_CARD_SDHCCOMBO;
                }
            }

            /*
            //������Ÿ��üĴ���
            PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
            PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
            PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
            PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
            PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
            PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  

            //����SDHCģ��Ĳ�����
            SDHC_set_baudrate (CORE_CLOCK_HZ, BAUD_RATE_HZ);

            //���ø������Ź���ΪSDHC
            PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
            PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
            PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
            PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
            PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
            PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  

            //ʹ��SDHCģ���ʱ��
            SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
            */
            break;
        //�򿨷�������
        case IO_IOCTL_ESDHC_SEND_COMMAND:
#if PRINT
          uartPrintf("�������IO_IOCTL_ESDHC_SEND_COMMAND\n");
#endif
            val = SDHC_send_command ((ESDHC_COMMAND_STRUCT_PTR)param32_ptr);
            if (val > 0)
            {
                result = ESDHC_ERROR_COMMAND_FAILED;
            }
            if (val < 0)
            {
                result = ESDHC_ERROR_COMMAND_TIMEOUT;
            }
            break;
        //��ȡ��ǰͨ�Ų�����״̬
        case IO_IOCTL_ESDHC_GET_BAUDRATE:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //��ȡ��ǰ���õĲ�����
                val = ((SDHC_SYSCTL & SDHC_SYSCTL_SDCLKFS_MASK) >> SDHC_SYSCTL_SDCLKFS_SHIFT) << 1;
                val *= ((SDHC_SYSCTL & SDHC_SYSCTL_DVS_MASK) >> SDHC_SYSCTL_DVS_SHIFT) + 1;
                *param32_ptr = (u32)(CORE_CLOCK_HZ / val);
            }
            break;
        //�趨��ǰͨ�Ų�����״̬
        case IO_IOCTL_ESDHC_SET_BAUDRATE:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else if (0 == (*param32_ptr)) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                if (! SDHC_is_running())
                {
                    //������Ÿ��üĴ���
                    PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
                    PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
                    PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
                    PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
                    PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
                    PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  

                    //����SDHCģ��Ĳ�����
                    SDHC_set_baudrate (CORE_CLOCK_HZ, *param32_ptr);

                    //���ø������Ź���ΪSDHC
                    PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
                    PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
                    PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
                    PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
                    PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
                    PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  

                    //ʹ��SDHCģ���ʱ��
                    SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
                }
                else
                {
                    result = IO_ERROR_DEVICE_BUSY;
                }
            }
            break;
        //��ȡ�鳤��
        case IO_IOCTL_ESDHC_GET_BLOCK_SIZE:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //��ȡSDHCģ�����õĿ�Ĵ�С
                *param32_ptr = (SDHC_BLKATTR & SDHC_BLKATTR_BLKSIZE_MASK) >> SDHC_BLKATTR_BLKSIZE_SHIFT;
            }       
            break;
        //�趨�鳤��
        case IO_IOCTL_ESDHC_SET_BLOCK_SIZE:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //����SDHCģ�鴦��Ŀ�Ĵ�С
                if (! SDHC_is_running())
                {
                    if (*param32_ptr > 0x0FFF)
                    {
                        result = IO_ERROR_INVALID_PARAMETER;
                    }
                    else
                    {
                        SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKSIZE_MASK); 
                        SDHC_BLKATTR |= SDHC_BLKATTR_BLKSIZE(*param32_ptr);
                    }
                }
                else
                {
                    result = IO_ERROR_DEVICE_BUSY;
                }
            }       
            break;
        //��ȡ��ͨ������λ��
        case IO_IOCTL_ESDHC_GET_BUS_WIDTH:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //��ȡ��ǰ���õ�SDHCģ������߿��
                val = (SDHC_PROCTL & SDHC_PROCTL_DTW_MASK) >> SDHC_PROCTL_DTW_SHIFT;
                if (ESDHC_PROCTL_DTW_1BIT == val)
                {
                    *param32_ptr = ESDHC_BUS_WIDTH_1BIT;
                }
                else if (ESDHC_PROCTL_DTW_4BIT == val)
                {
                    *param32_ptr = ESDHC_BUS_WIDTH_4BIT;
                }
                else if (ESDHC_PROCTL_DTW_8BIT == val)
                {
                    *param32_ptr = ESDHC_BUS_WIDTH_8BIT;
                }
                else
                {
                    result = ESDHC_ERROR_INVALID_BUS_WIDTH; 
                }
            }       
            break;
        //�趨��ͨ������λ��
        case IO_IOCTL_ESDHC_SET_BUS_WIDTH:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //����SDHCģ������߿��
                if (! SDHC_is_running())
                {
                    if (ESDHC_BUS_WIDTH_1BIT == *param32_ptr)
                    {
                        SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
                        SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_1BIT);
                    }
                    else if (ESDHC_BUS_WIDTH_4BIT == *param32_ptr)
                    {
                        SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
                        SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_4BIT);
                    }
                    else if (ESDHC_BUS_WIDTH_8BIT == *param32_ptr)
                    {
                        SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
                        SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_8BIT);
                    }
                    else
                    {
                        result = ESDHC_ERROR_INVALID_BUS_WIDTH; 
                    }
                }
                else
                {
                    result = IO_ERROR_DEVICE_BUSY;
                }
            }       
            break;
        //��ȡ����ǰ״̬
        case IO_IOCTL_ESDHC_GET_CARD:
            if (NULL == param32_ptr) 
            {
                result = IO_ERROR_INVALID_PARAMETER;
            } 
            else 
            {
                //�ȴ�80��ʱ��
                SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
                while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK){};
                    
                //��ȡSD�����ص�״̬
                if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
                {
                    SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
                    SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
                }
                if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
                {
                    if (ESDHC_CARD_NONE == SDHC_Card.CARD_TYPE)
                    {
                    	SDHC_Card.CARD_TYPE = ESDHC_CARD_UNKNOWN;
                    }
                }
                else
                {
                	SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
                }
                *param32_ptr = SDHC_Card.CARD_TYPE;
            }
            break;
        default:
            result = IO_ERROR_INVALID_IOCTL_CMD;
            break;
    }
    return result;
}


//=========================================================================
//�������ƣ�SDHC_set_baudrate                                                        
//���ܸ�Ҫ������SDHCģ���ʱ�ӡ�                                                
//����˵����clock:ϵͳʱ��                                               
//         baudrate��������                                 
//�������أ���                                                               
//=========================================================================
void SDHC_set_baudrate(u32 clock,u32 baudrate)
{
    u32 i, pres, div, min, minpres = 0x80, mindiv = 0x0F;
    u32  val;

    //�ҵ�����ķ�Ƶ����
    min = (u32)-1;
    for (pres = 2; pres <= 256; pres <<= 1) 
    {
        for (div = 1; div <= 16; div++) 
        {
            val = pres * div * baudrate - clock;
            if (val >= 0)
            {
                if (min > val) 
                {
                    min = val;
                    minpres = pres;
                    mindiv = div;
                }
            }
        }
    }

    //��ֹSDHCģ��ʱ��
    SDHC_SYSCTL &= (~ SDHC_SYSCTL_SDCLKEN_MASK);

    //�޸ķ�Ƶ����
    div = SDHC_SYSCTL & (~ (SDHC_SYSCTL_DTOCV_MASK | SDHC_SYSCTL_SDCLKFS_MASK | SDHC_SYSCTL_DVS_MASK));
    SDHC_SYSCTL = div | (SDHC_SYSCTL_DTOCV(0x0E) | SDHC_SYSCTL_SDCLKFS(minpres >> 1) | SDHC_SYSCTL_DVS(mindiv - 1));

    //����ʱ���ȶ�
    while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_SDSTB_MASK))
    {
        for(i = 0;i < 200000;i++)
        {
        }
    };

    //ʹ��SDHCģ��ʱ��
    SDHC_SYSCTL |= SDHC_SYSCTL_SDCLKEN_MASK;
    SDHC_IRQSTAT |= SDHC_IRQSTAT_DTOE_MASK;
}

//=========================================================================
//�������ƣ�SDHC_is_running                                                        
//���ܸ�Ҫ�����SDHCģ���Ƿ�æ                                                
//����˵������                              
//�������أ�1����æ;0��������                                                               
//=========================================================================
u8 SDHC_is_running(void)
{
    return (0 != (SDHC_PRSSTAT & (SDHC_PRSSTAT_RTA_MASK | SDHC_PRSSTAT_WTA_MASK | SDHC_PRSSTAT_DLA_MASK | SDHC_PRSSTAT_CDIHB_MASK | SDHC_PRSSTAT_CIHB_MASK)));
}   

//=========================================================================
//�������ƣ�SDHC_status_wait                                                        
//���ܸ�Ҫ���ȴ��жϱ�־λ��λ                                                
//����˵����mask�������ϵı�־λ����                              
//�������أ����ش������                                                              
//=========================================================================
u32 SDHC_status_wait(u32 mask)
{
 // uartPrintf("9\n");
  //uartPrintf("%d\n",mask);
  
    u32 result;
    do
    {
      
        result = SDHC_IRQSTAT & mask;
#if PRINT   
        uartPrintf("%d\n",SDHC_IRQSTAT);
#endif 
    } 
    while (0 == result);
    return result;
}

//=========================================================================
//�������ƣ�SDHC_send_command                                                        
//���ܸ�Ҫ����������                                                
//����˵����command������ṹ��ָ��                              
//�������أ�0���ɹ���1������-1����ʱ��                                                              
//=========================================================================
u32 SDHC_send_command (ESDHC_COMMAND_STRUCT_PTR command)
{
  //uartPrintf("��ʼ��������\n");
    u32 xfertyp;//Transfer Type Register (SDHC_XFERTYP)
    
    //������������
    xfertyp = ESDHC_COMMAND_XFERTYP[command->COMMAND & 0x3F];
    if ((0 == xfertyp) && (0 != command->COMMAND))
    {
#if PRINT
      uartPrintf("�������ȫ������1\n");
#endif
     
      
        return 1;
    }
    //uartPrintf("1\n");
    //���Ƴ����
    SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;

    //�ȴ�CMDͨ������
    while (SDHC_PRSSTAT & SDHC_PRSSTAT_CIHB_MASK)
    {
#if PRINT
      uartPrintf("�ȴ�CMDͨ������\n");
#endif
      
    }
   

    //���ô������ͼĴ�������
    //д��������Ĵ���(Command Argument Register��SDHC_CMDARG)
    SDHC_CMDARG = command->ARGUMENT;
    //���XFERTYP�Ĵ���������������
    xfertyp &= (~ SDHC_XFERTYP_CMDTYP_MASK);
    //����XFERTYP�Ĵ���������������
    xfertyp |= SDHC_XFERTYP_CMDTYP(command->TYPE);
    //���Ϊ�ָ�����
    if (ESDHC_TYPE_RESUME == command->TYPE)
    {
        //�����������Ϊ�ָ�CMD52д����ѡ���������ݴ���ѡ��λ��
        xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
    }
    // uartPrintf("3\n");
    //������л�æ����
    if (ESDHC_TYPE_SWITCH_BUSY == command->TYPE)
    {
       //uartPrintf("4\n");
    
        if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48))
        {
            xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
            xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY);
        }
        else
        {
            xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
            xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48);
        }
    }
    //�������
    SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKCNT_MASK);
     //uartPrintf("5\n");
    //�����ж�
    if (0 != command->BLOCKS)
    {
      // uartPrintf("6\n");
        //�鲻Ϊ0
        if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY))
        {
            xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        }
        if (command->READ)
        {
            xfertyp |= SDHC_XFERTYP_DTDSEL_MASK;    
        }
        if (command->BLOCKS > 1)
        {
            xfertyp |= SDHC_XFERTYP_MSBSEL_MASK;    
        }
        if ((u32)-1 != command->BLOCKS)
        {
            SDHC_BLKATTR |= SDHC_BLKATTR_BLKCNT(command->BLOCKS);
         //    uartPrintf("7\n");
            xfertyp |= SDHC_XFERTYP_BCEN_MASK;
        }
    }

    //ִ������
    SDHC_DSADDR = 0;
    SDHC_XFERTYP = xfertyp;
   // uartPrintf("8\n");
    //�ȴ�״̬�Ĵ�����λ
    if (SDHC_status_wait (SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK) != SDHC_IRQSTAT_CC_MASK)
    {
        SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK;
#if PRINT
        uartPrintf("�ȴ�����λ\n");
#endif 
        return 1;
    }

    //��⿨�Ƿ��Ƴ�
    if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
    {
        SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
#if PRINT
        uartPrintf("��⿨�Ƿ��Ƴ�\n");
#endif
        
        return 1;
    }

    //��������Ƿ�ʱ
    if (SDHC_IRQSTAT & SDHC_IRQSTAT_CTOE_MASK)
    {
        SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
#if PRINT
        uartPrintf("��������Ƿ�ʱ\n");
#endif
        return -1;
    }
    if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO))
    {
        command->RESPONSE[0] = SDHC_CMDRSP(0);
        if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136))
        {
            command->RESPONSE[1] = SDHC_CMDRSP(1);
            command->RESPONSE[2] = SDHC_CMDRSP(2);
            command->RESPONSE[3] = SDHC_CMDRSP(3);
        }
    }
    
    SDHC_IRQSTAT |= SDHC_IRQSTAT_CC_MASK;

    return 0;
}


#ifdef  __cplusplus
}
#endif
