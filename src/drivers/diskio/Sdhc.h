/***MODU+********************************************************************/
/* Copyright (c) 2012.04  WH, All Rights Reserved.                          */
/*  WebSite     : www.smart-dz.cn                                           */
/*  Email       : dragonhzw@163.com                                         */
/*  FileName    : Vectors.h                                                 */
/*  Description : The vectors module                                        */
/*  History     :                                                           */                                                       
/*     [Author]   [Date]      [Version]    [Description]                    */              
/*     [1] dragonhzw   2012/04/09  Ver 1.0.0    Initial file.               */
/*                                                                          */
/*  Built with IAR Embedded Workbench for ARM 6.30                          */
/***MODU-********************************************************************/
#include "common.h"

#ifndef __K60_UART_H__
#define __K60_UART_H__


#define CORE_CLOCK_HZ      96000000 //MCU�ں�ʱ��
#define BAUD_RATE_HZ       25000000 //SDHCģ��ͨ�Ų�����

//����MCUΪС��
#define MCU_ENDIAN  LITTLE_ENDIAN

//�����豸���С
#define IO_SDCARD_BLOCK_SIZE_POWER   (9)
#define IO_SDCARD_BLOCK_SIZE         (1 << IO_SDCARD_BLOCK_SIZE_POWER)

//SD����ⶨ��
#define SDCARD_DETECT_PORT       PORT_E
#define SDCARD_DETECT_PIN        28
#define SDCARD_PROTECT_PORT      PORT_E
#define SDCARD_PROTECT_PIN       27

#define GPIO_PIN_MASK            0x1Fu
#define GPIO_PIN(x)              (((1)<<(x & GPIO_PIN_MASK)))

#define SDCARD_GPIO_DETECT       (GPIOE_PDIR & GPIO_PDIR_PDI(GPIO_PIN(SDCARD_DETECT_PIN)))
#define SDCARD_GPIO_PROTECT      (GPIOE_PDIR & GPIO_PDIR_PDI(GPIO_PIN(SDCARD_PROTECT_PIN)))

//IOCTL���������
#define IO_IOCTL_ESDHC_INIT                  (0x01)
#define IO_IOCTL_ESDHC_SEND_COMMAND          (0x02)
#define IO_IOCTL_ESDHC_GET_CARD              (0x03)
#define IO_IOCTL_ESDHC_GET_BAUDRATE          (0x04)
#define IO_IOCTL_ESDHC_SET_BAUDRATE          (0x05)
#define IO_IOCTL_ESDHC_GET_BUS_WIDTH         (0x06)
#define IO_IOCTL_ESDHC_SET_BUS_WIDTH         (0x07)
#define IO_IOCTL_ESDHC_GET_BLOCK_SIZE        (0x08)
#define IO_IOCTL_ESDHC_SET_BLOCK_SIZE        (0x09)

//IOCTL�������ͷ���ֵ
#define IO_OK                      (0)

#define IO_DEVICE_DOES_NOT_EXIST   (0x01)
#define IO_ERROR_READ              (0x02)
#define IO_ERROR_WRITE             (0x03)
#define IO_ERROR_SEEK              (0x04)
#define IO_ERROR_WRITE_PROTECTED   (0x05)
#define IO_ERROR_READ_ACCESS       (0x06)
#define IO_ERROR_WRITE_ACCESS      (0x07)
#define IO_ERROR_SEEK_ACCESS       (0x08)
#define IO_ERROR_INVALID_IOCTL_CMD (0x09)
#define IO_ERROR_DEVICE_BUSY       (0x0A)
#define IO_ERROR_DEVICE_INVALID    (0x0B)
#define IO_ERROR_INVALID_PARAMETER (0x0C)

#define IO_ERROR_TIMEOUT           (0x10)
#define IO_ERROR_INQUIRE           (0x11)

// ESDHC������
#define ESDHC_OK                             (0x00)
#define ESDHC_ERROR_INIT_FAILED              (0x01)
#define ESDHC_ERROR_COMMAND_FAILED           (0x02)
#define ESDHC_ERROR_COMMAND_TIMEOUT          (0x03)
#define ESDHC_ERROR_DATA_TRANSFER            (0x04)
#define ESDHC_ERROR_INVALID_BUS_WIDTH        (0x05)
#define ESDHC_ERROR_IO                       (0x06)

// ESDHC���߿��
#define ESDHC_BUS_WIDTH_1BIT                 (0x00)
#define ESDHC_BUS_WIDTH_4BIT                 (0x01)
#define ESDHC_BUS_WIDTH_8BIT                 (0x02)

// ESDHC������
#define ESDHC_CARD_NONE                      (0x00)
#define ESDHC_CARD_UNKNOWN                   (0x01)
#define ESDHC_CARD_SD                        (0x02)
#define ESDHC_CARD_SDHC                      (0x03)
#define ESDHC_CARD_SDIO                      (0x04)
#define ESDHC_CARD_SDCOMBO                   (0x05)
#define ESDHC_CARD_SDHCCOMBO                 (0x06)
#define ESDHC_CARD_MMC                       (0x07)
#define ESDHC_CARD_CEATA                     (0x08)

// ESDHC��������
#define ESDHC_TYPE_NORMAL                    (0x00)
#define ESDHC_TYPE_SUSPEND                   (0x01)
#define ESDHC_TYPE_RESUME                    (0x02)
#define ESDHC_TYPE_ABORT                     (0x03)
#define ESDHC_TYPE_SWITCH_BUSY               (0x04)

// ESDHC����
#define ESDHC_CMD0                           (0)
#define ESDHC_CMD1                           (1)
#define ESDHC_CMD2                           (2)
#define ESDHC_CMD3                           (3)
#define ESDHC_CMD4                           (4)
#define ESDHC_CMD5                           (5)
#define ESDHC_CMD6                           (6)
#define ESDHC_CMD7                           (7)
#define ESDHC_CMD8                           (8)
#define ESDHC_CMD9                           (9)
#define ESDHC_CMD10                          (10)
#define ESDHC_CMD11                          (11)
#define ESDHC_CMD12                          (12)
#define ESDHC_CMD13                          (13)
#define ESDHC_CMD15                          (15)
#define ESDHC_CMD16                          (16)
#define ESDHC_CMD17                          (17)
#define ESDHC_CMD18                          (18)
#define ESDHC_CMD20                          (20)
#define ESDHC_CMD24                          (24)
#define ESDHC_CMD25                          (25)
#define ESDHC_CMD26                          (26)
#define ESDHC_CMD27                          (27)
#define ESDHC_CMD28                          (28)
#define ESDHC_CMD29                          (29)
#define ESDHC_CMD30                          (30)
#define ESDHC_CMD32                          (32)
#define ESDHC_CMD33                          (33)
#define ESDHC_CMD34                          (34)
#define ESDHC_CMD35                          (35)
#define ESDHC_CMD36                          (36)
#define ESDHC_CMD37                          (37)
#define ESDHC_CMD38                          (38)
#define ESDHC_CMD39                          (39)
#define ESDHC_CMD40                          (40)
#define ESDHC_CMD42                          (42)
#define ESDHC_CMD52                          (52)
#define ESDHC_CMD53                          (53)
#define ESDHC_CMD55                          (55)
#define ESDHC_CMD56                          (56)
#define ESDHC_CMD60                          (60)
#define ESDHC_CMD61                          (61)
#define ESDHC_ACMD6                          (0x40 + 6)
#define ESDHC_ACMD13                         (0x40 + 13)
#define ESDHC_ACMD22                         (0x40 + 22)
#define ESDHC_ACMD23                         (0x40 + 23)
#define ESDHC_ACMD41                         (0x40 + 41)
#define ESDHC_ACMD42                         (0x40 + 42)
#define ESDHC_ACMD51                         (0x40 + 51)

#define ESDHC_XFERTYP_RSPTYP_NO              (0x00)
#define ESDHC_XFERTYP_RSPTYP_136             (0x01)
#define ESDHC_XFERTYP_RSPTYP_48              (0x02)
#define ESDHC_XFERTYP_RSPTYP_48BUSY          (0x03)

#define ESDHC_XFERTYP_CMDTYP_ABORT           (0x03)

#define ESDHC_PROCTL_EMODE_INVARIANT         (0x02)

//����Э��ͨ��λ������
#define ESDHC_PROCTL_DTW_1BIT                (0x00)
#define ESDHC_PROCTL_DTW_4BIT                (0x01)
#define ESDHC_PROCTL_DTW_8BIT                (0x10)

//SD���������ܷ��ؽ��
typedef enum
{
    SD_OK,
    SD_NO_CARD,
    SD_INIT_FAILS
} SD_RETURN;

//�����ṹ��
typedef struct esdhc_command_struct
{
    u8  COMMAND;     //������
    u8  TYPE;        //��������
    u32 ARGUMENT;    //�������
    u8  READ;        //�Ƿ�Ϊ������
    u32 BLOCKS;      //��������
    u32 RESPONSE[4]; //Ӧ��
} ESDHC_COMMAND_STRUCT, *ESDHC_COMMAND_STRUCT_PTR;

//����SDHC�豸���ֲ�����Ϣ
typedef struct io_sdcard_struct
{
    u8  CARD_TYPE;  //��������豸����
    u32 BITS;       //����SDHCģ��Ķ�ȡ��д��ʱ��λ��
    u32 SD_TIMEOUT; //����SDHC���ʱʱ��
    u32 NUM_BLOCKS; //������豸��ģ����
    u8  SDHC;       //��������豸�Ƿ�ΪSDHC�����ΪTRUE����ʼ��ַ=����*512
    u8  VERSION2;   //�ж��Ƿ�ΪSD 2.0���ϵĿ�
    u32 ADDRESS;    //�豸��ַ

} SDCARD_STRUCT, *SDCARD_STRUCT_PTR;

/*****************************************************************************/
/*                         Function Declare                                  */
/*****************************************************************************/
u32 SDHC_init(u32 coreClk, u32 baud);
u32 SDHC_receive_block (u8 *buff,u32 btr);
u32 SDHC_send_block (const u8 *buff,u32 btr);
u32 SDHC_ioctl(u32 cmd,void *param_ptr);
void  SDHC_set_baudrate(u32 clock,u32 baudrate);
u8 SDHC_is_running(void);
u32 SDHC_status_wait(u32 mask);
u32 SDHC_send_command (ESDHC_COMMAND_STRUCT_PTR command);
/*****************************************************************************/
/*                         Function Declare                                  */
/*****************************************************************************/
void PLL_Init(void);


#endif /* __K60_UART_H__ */