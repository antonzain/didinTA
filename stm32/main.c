/*
              DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

 Copyright (C) 2018 Achmadi S.T.

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
 */

/**
 * @file    main.c
 * @brief   Main routine code.
 *
 * @addtogroup Main
 * @{
 */

#include "ch.h"
#include "hal.h"

#include "din_adc.h"
#include "din_web.h"
#include "din_uart.h"
#include "din_mpu.h"
#include "din_fuzzy.h"

extern adcsample_t adc0,adc00,adc01;
extern float v_adc;
extern float ax,ay,az,mag;

float s_ax,s_ay,s_az;
float s_v_adc,s_mag;
float m_ax,m_ay,m_az;
float m_v_adc,m_mag;

static THD_WORKING_AREA(waData, 256);
static THD_FUNCTION(thdData, arg) {

    (void)arg;

    uint8_t i=0;

    s_ax = 0;
    s_ay = 0;
    s_az = 0;
    s_v_adc = 0;
    s_mag = 0;

    chRegSetThreadName("Data Process");
    while (true) {
        d_mpu_i2cReadData(0x3B, 14);

        adc01 = adc0;
        v_adc = ADC_SCALE * abs(adc01-adc00);
        adc00 = adc01;

        s_ax = s_ax + ax;
        s_ay = s_ay + ay;
        s_az = s_az + az;
        s_v_adc = s_v_adc + v_adc;
        s_mag = s_mag + mag;

        i++;

        if(i==100){
            m_ax = s_ax/100;
            m_ay = s_ay/100;
            m_az = s_az/100;
            m_v_adc = s_v_adc/100;
            m_mag = s_mag/100;

            chprintf((BaseSequentialStream *)&SD1,"%5.2f,%5.2f,%5.2f,%5.2f,%5.2f\r\n",m_v_adc,m_ax,m_ay,m_az,m_mag);
            // proses fuzzy nanti di sini

            i = 0;
            s_ax = 0;
            s_ay = 0;
            s_az = 0;
            s_v_adc = 0;
            s_mag = 0;
        }

        chThdSleepMilliseconds(1);
    }
}

static THD_WORKING_AREA(waLED, 128);
static THD_FUNCTION(thdLED, arg) {

    (void)arg;

    chRegSetThreadName("blinker");
    while (true) {
        palTogglePad(GPIOC,13);
        chThdSleepMilliseconds(500);
    }
}

/**
 * @brief  All Main function.
 */
int main(void) {

  halInit();
  chSysInit();

  d_adc_start();
//  d_web_start();
  d_uart_start();
  d_uart_info();
  d_mpu_start();

#ifdef SERVER_NOTIF
  chprintf((BaseSequentialStream *)&SD1,"All Setup Finished\r\n");
#endif

  chThdSleepMilliseconds(200);
  chThdCreateStatic(waData, sizeof(waData), NORMALPRIO, thdData, NULL);

  palSetPadMode(GPIOC,13,PAL_MODE_OUTPUT_PUSHPULL);
  palClearPad(GPIOC,13);
  chThdCreateStatic(waLED, sizeof(waLED), NORMALPRIO, thdLED, NULL);

  chThdSleepMilliseconds(200);

  while(true){
    chThdSleepMilliseconds(1);
//    d_web_term();
  }
}
/** @} */
