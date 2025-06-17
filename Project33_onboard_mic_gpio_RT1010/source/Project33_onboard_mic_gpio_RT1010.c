/*
 * Copyright 2016-2024 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    Project33_onboard_mic_gpio_RT1010.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "MIMXRT1011.h"
#include "fsl_debug_console.h"
#include "fsl_dmamux.h"
#include "fsl_wm8960.h"
#include "fsl_sai_edma.h"
#include "fsl_xbara.h"

// --- TMN ---

#define THRESHOLD              200U

#define BOARD_PWM_BASEADDR     PWM1

#define GPIO_PIN_NUMBER        11U

// --- NXP ---

//#define CHANGES_MADE 1


//#if defined(CHANGES_MADE) && CHANGES_MADE

#include "fsl_codec_common.h"
#include "fsl_codec_adapter.h"
/*These defines was added in order to eliminate the errors*/
#define DEMO_CODEC_WM8960
#define DEMO_SAI                       SAI1
#define DEMO_SAI_CHANNEL               (0)
#define DEMO_SAI_IRQ                   SAI1_IRQn
#define DEMO_SAITxIRQHandler           SAI1_IRQHandler
#define DEMO_SAI_TX_SYNC_MODE          kSAI_ModeAsync
#define DEMO_SAI_RX_SYNC_MODE          kSAI_ModeSync
#define DEMO_SAI_TX_BIT_CLOCK_POLARITY kSAI_PolarityActiveLow
#define DEMO_SAI_MCLK_OUTPUT           true
#define DEMO_SAI_MASTER_SLAVE          kSAI_Slave

#define DEMO_AUDIO_DATA_CHANNEL (2U)
#define DEMO_AUDIO_BIT_WIDTH    kSAI_WordWidth16bits
#define DEMO_AUDIO_SAMPLE_RATE  (kSAI_SampleRate16KHz)
#define DEMO_AUDIO_MASTER_CLOCK DEMO_SAI_CLK_FREQ

/* IRQ */
#define DEMO_SAI_TX_IRQ SAI1_IRQn
#define DEMO_SAI_RX_IRQ SAI1_IRQn

/* DMA */
#define DEMO_DMA             DMA0
#define DEMO_DMAMUX          DMAMUX
#define DEMO_TX_EDMA_CHANNEL (0U)
#define DEMO_RX_EDMA_CHANNEL (1U)
#define DEMO_SAI_TX_SOURCE   kDmaRequestMuxSai1Tx
#define DEMO_SAI_RX_SOURCE   kDmaRequestMuxSai1Rx

/* Select Audio/Video PLL (786.48 MHz) as sai1 clock source */
#define DEMO_SAI1_CLOCK_SOURCE_SELECT (2U)
/* Clock pre divider for sai1 clock source */
#define DEMO_SAI1_CLOCK_SOURCE_PRE_DIVIDER (3U)
/* Clock divider for sai1 clock source */
#define DEMO_SAI1_CLOCK_SOURCE_DIVIDER (15U)
/* Get frequency of sai1 clock */
#define DEMO_SAI_CLK_FREQ                                                        \
    (CLOCK_GetFreq(kCLOCK_AudioPllClk) / (DEMO_SAI1_CLOCK_SOURCE_DIVIDER + 1U) / \
     (DEMO_SAI1_CLOCK_SOURCE_PRE_DIVIDER + 1U))

/* I2C instance and clock */
#define DEMO_I2C LPI2C1

/* Select USB1 PLL (480 MHz) as master lpi2c clock source */
#define DEMO_LPI2C_CLOCK_SOURCE_SELECT (0U)
/* Clock divider for master lpi2c clock source */
#define DEMO_LPI2C_CLOCK_SOURCE_DIVIDER (5U)
/* Get frequency of lpi2c clock */
#define DEMO_I2C_CLK_FREQ ((CLOCK_GetFreq(kCLOCK_Usb1PllClk) / 8) / (DEMO_LPI2C_CLOCK_SOURCE_DIVIDER + 1U))

#define BOARD_MASTER_CLOCK_CONFIG()
#define BUFFER_SIZE   (1024U)
#define BUFFER_NUMBER (4U)
#ifndef DEMO_CODEC_VOLUME
#define DEMO_CODEC_VOLUME 100U


//#endif

AT_NONCACHEABLE_SECTION_ALIGN(static uint8_t Buffer[BUFFER_NUMBER * BUFFER_SIZE], 4);
AT_QUICKACCESS_SECTION_DATA(sai_edma_handle_t txHandle);
static uint32_t  rx_index = 0U;
AT_QUICKACCESS_SECTION_DATA(sai_edma_handle_t rxHandle);
volatile uint32_t emptyBlock = BUFFER_NUMBER;
edma_handle_t dmaTxHandle = {0}, dmaRxHandle = {0};
extern codec_config_t boardCodecConfig;
codec_handle_t codecHandle;
#if (defined(DEMO_EDMA_HAS_CHANNEL_CONFIG) && DEMO_EDMA_HAS_CHANNEL_CONFIG)
extern edma_config_t dmaConfig;
#else
edma_config_t dmaConfig = {0};
#endif
#endif
/* TODO: insert other include files here. */

/* TODO: insert other definitions and declarations here. */
wm8960_config_t wm8960Config = {
    .i2cConfig = {.codecI2CInstance = BOARD_CODEC_I2C_INSTANCE, .codecI2CSourceClock = BOARD_CODEC_I2C_CLOCK_FREQ},
    .route     = kWM8960_RoutePlaybackandRecord,
    .leftInputSource  = kWM8960_InputDifferentialMicInput3,
    .rightInputSource = kWM8960_InputDifferentialMicInput2,
    .playSource       = kWM8960_PlaySourceDAC,
    .slaveAddress     = WM8960_I2C_ADDR,
    .bus              = kWM8960_BusI2S,
    .format           = {.mclk_HZ    = 6144000U * 2,
                         .sampleRate = kWM8960_AudioSampleRate16KHz,
                         .bitWidth   = kWM8960_AudioBitWidth16bit},
    .master_slave     = true,
};
codec_config_t boardCodecConfig = {.codecDevType = kCODEC_WM8960, .codecDevConfig = &wm8960Config};
/*
 * AUDIO PLL setting: Frequency = Fref * (DIV_SELECT + NUM / DENOM)
 *                              = 24 * (32 + 768/1000)
 *                              = 786.432 MHz
 */
const clock_audio_pll_config_t audioPllConfig = {
    .loopDivider = 32,   /* PLL loop divider. Valid range for DIV_SELECT divider value: 27~54. */
    .postDivider = 1,    /* Divider after the PLL, should only be 1, 2, 4, 8, 16. */
    .numerator   = 768,  /* 30 bit numerator of fractional loop divider. */
    .denominator = 1000, /* 30 bit denominator of fractional loop divider */
};

/*
 * @brief   Application entry point.
 */
void BOARD_EnableSaiMclkOutput(bool enable)
{
    if (enable)
    {
        IOMUXC_GPR->GPR1 |= IOMUXC_GPR_GPR1_SAI1_MCLK_DIR_MASK;
    }
    else
    {
        IOMUXC_GPR->GPR1 &= (~IOMUXC_GPR_GPR1_SAI1_MCLK_DIR_MASK);
    }
}

static void rx_callback(I2S_Type *base, sai_edma_handle_t *handle, status_t status, void *userData)
{
    if (kStatus_SAI_RxError == status)
    {
        /* Handle the error. */
    }
    else
    {
        emptyBlock--;
    }
//     PRINTF("\n\rIn RX callback...\n\r");
}

static void tx_callback(I2S_Type *base, sai_edma_handle_t *handle, status_t status, void *userData)
{
    if (kStatus_SAI_TxError == status)
    {
        /* Handle the error. */
    }
    else
    {
        emptyBlock++;
    }
//    PRINTF("\n\rIn TX callback...\n\r");
}

int main(void) {

	sai_transfer_t xfer;
	sai_transceiver_t saiConfig;

	uint8_t val;
	// uint16_t qe;

    /* Init board hardware. */
    BOARD_ConfigMPU();
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();

    CLOCK_InitAudioPll( &audioPllConfig );

#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif

    /*Clock setting for LPI2C*/
	CLOCK_SetMux( kCLOCK_Lpi2cMux , 0U );
	CLOCK_SetDiv( kCLOCK_Lpi2cDiv , 5U );

	/*Clock setting for SAI1*/
	CLOCK_SetMux( kCLOCK_Sai1Mux    ,  2U );
	CLOCK_SetDiv( kCLOCK_Sai1PreDiv ,  3U );
	CLOCK_SetDiv( kCLOCK_Sai1Div    , 15U );

	/*Enable MCLK clock*/
	BOARD_EnableSaiMclkOutput(true);

	CLOCK_EnableClock( kCLOCK_Trace );

	XBARA_Init( XBARA );
//	XBARA_SetSignalsConnection( XBARA , kXBARA1_InputLogicHigh , kXBARA1_OutputFlexpwm1Fault0 );
//	XBARA_SetSignalsConnection( XBARA , kXBARA1_InputLogicHigh , kXBARA1_OutputFlexpwm1Fault1 );
//	XBARA_SetSignalsConnection( XBARA , kXBARA1_InputLogicHigh , kXBARA1_OutputFlexpwm1Fault2 );
//	XBARA_SetSignalsConnection( XBARA , kXBARA1_InputLogicHigh , kXBARA1_OutputFlexpwm1Fault3 );

	/* Init DMAMUX */
	DMAMUX_Init( DMAMUX );
	DMAMUX_SetSource( DMAMUX , 0U , (uint8_t)kDmaRequestMuxSai1Tx );
	DMAMUX_SetSource( DMAMUX , 1U , (uint8_t)kDmaRequestMuxSai1Rx );
	DMAMUX_EnableChannel( DMAMUX , 0U );
	DMAMUX_EnableChannel( DMAMUX , 1U );

//    PRINTF("Hello World\r\n");

    /* Init DMA and create handle for DMA */
#if (!defined(DEMO_EDMA_HAS_CHANNEL_CONFIG) || (defined(DEMO_EDMA_HAS_CHANNEL_CONFIG) && !DEMO_EDMA_HAS_CHANNEL_CONFIG))
	EDMA_GetDefaultConfig(&dmaConfig);
#endif
	EDMA_Init(DEMO_DMA, &dmaConfig);
	EDMA_CreateHandle(&dmaTxHandle, DEMO_DMA, DEMO_TX_EDMA_CHANNEL);
	EDMA_CreateHandle(&dmaRxHandle, DEMO_DMA, DEMO_RX_EDMA_CHANNEL);
#if defined(FSL_FEATURE_EDMA_HAS_CHANNEL_MUX) && FSL_FEATURE_EDMA_HAS_CHANNEL_MUX
	EDMA_SetChannelMux(DEMO_DMA, DEMO_TX_EDMA_CHANNEL, DEMO_SAI_TX_EDMA_CHANNEL);
	EDMA_SetChannelMux(DEMO_DMA, DEMO_RX_EDMA_CHANNEL, DEMO_SAI_RX_EDMA_CHANNEL);
#endif

	/* SAI init */
	SAI_Init(DEMO_SAI);

	SAI_TransferTxCreateHandleEDMA(DEMO_SAI, &txHandle, tx_callback, NULL, &dmaTxHandle);
	SAI_TransferRxCreateHandleEDMA(DEMO_SAI, &rxHandle, rx_callback, NULL, &dmaRxHandle);

	/* I2S mode configurations */
	SAI_GetClassicI2SConfig(&saiConfig, DEMO_AUDIO_BIT_WIDTH, kSAI_Stereo, 1U << DEMO_SAI_CHANNEL);
	saiConfig.syncMode              = DEMO_SAI_TX_SYNC_MODE;
	saiConfig.bitClock.bclkPolarity = DEMO_SAI_TX_BIT_CLOCK_POLARITY;
	saiConfig.masterSlave           = DEMO_SAI_MASTER_SLAVE;
	SAI_TransferTxSetConfigEDMA(DEMO_SAI, &txHandle, &saiConfig);
	saiConfig.syncMode = DEMO_SAI_RX_SYNC_MODE;
	SAI_TransferRxSetConfigEDMA(DEMO_SAI, &rxHandle, &saiConfig);

	/* set bit clock divider */
	SAI_TxSetBitClockRate(DEMO_SAI, DEMO_AUDIO_MASTER_CLOCK, DEMO_AUDIO_SAMPLE_RATE, DEMO_AUDIO_BIT_WIDTH,
						  DEMO_AUDIO_DATA_CHANNEL);
	SAI_RxSetBitClockRate(DEMO_SAI, DEMO_AUDIO_MASTER_CLOCK, DEMO_AUDIO_SAMPLE_RATE, DEMO_AUDIO_BIT_WIDTH,
						  DEMO_AUDIO_DATA_CHANNEL);

	/* master clock configurations */
	BOARD_MASTER_CLOCK_CONFIG();

	/* Use default setting to init codec */
	if (CODEC_Init(&codecHandle, &boardCodecConfig) != kStatus_Success)
	{
		assert(false);
	}
	if (CODEC_SetVolume(&codecHandle, kCODEC_PlayChannelHeadphoneLeft | kCODEC_PlayChannelHeadphoneRight,
						DEMO_CODEC_VOLUME) != kStatus_Success)
	{
		assert(false);
	}

    /* Enter an infinite loop, just incrementing a counter. */
    while(1) {
    	if (emptyBlock > 0)
		{
			xfer.data     = Buffer + rx_index * BUFFER_SIZE;
			xfer.dataSize = BUFFER_SIZE;
			if (kStatus_Success == SAI_TransferReceiveEDMA(DEMO_SAI, &rxHandle, &xfer))
			{
				rx_index++;
			}
			else{}
			if (rx_index == BUFFER_NUMBER)
			{
				rx_index = 0U;
			}
			else{}
		}
    	else {}

    	val = *xfer.data;

		PRINTF("Data = %d \t Pin Value = ", val );

		if ( val >= THRESHOLD )
		{
        	PWM_UpdatePwmDutycycle( BOARD_PWM_BASEADDR , kPWM_Module_3 , kPWM_PwmA , kPWM_SignedCenterAligned , 50 );
			PWM_SetPwmLdok( BOARD_PWM_BASEADDR , kPWM_Control_Module_3 , true );

			PWM_GetStatusFlags( BOARD_PWM_BASEADDR , kPWM_Module_3 );

//			GPIO_PinWrite( GPIO1 , GPIO_PIN_NUMBER , 1U );

			PRINTF("1\t");
		}
		else
		{
			PWM_UpdatePwmDutycycle( BOARD_PWM_BASEADDR , kPWM_Module_3 , kPWM_PwmA , kPWM_SignedCenterAligned , 0 );
			PWM_SetPwmLdok( BOARD_PWM_BASEADDR , kPWM_Control_Module_3 , true );

			PWM_GetStatusFlags( BOARD_PWM_BASEADDR , kPWM_Module_3 );

//			GPIO_PinWrite( GPIO1 , GPIO_PIN_NUMBER , 0U );

			PRINTF("0\t");
		}
    }
    return 0 ;
}
