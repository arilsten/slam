#include "i2c.h"
#include "freeRTOS.h"
#include "semphr.h"
#include "nrf_twi_mngr.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#define TWI_INSTANCE_ID             1
#define MAX_PENDING_TRANSACTIONS    5
#define BUFFER_LENGTH              6

SemaphoreHandle_t i2cSemaphore;
static const nrf_twi_mngr_t m_nrf_twi_mngr;

NRF_TWI_MNGR_DEF(m_nrf_twi_mngr, MAX_PENDING_TRANSACTIONS, TWI_INSTANCE_ID);

static nrf_drv_twi_config_t const bus_config = {
   .scl                = 6,
   .sda                = 7,
   .frequency          = NRF_DRV_TWI_FREQ_400K,
   .interrupt_priority = APP_IRQ_PRIORITY_LOWEST,
   .clear_bus_init     = false
};


void i2cInit(){
      i2cSemaphore = xSemaphoreCreateMutex();
        if(nrf_twi_mngr_init(&m_nrf_twi_mngr,&bus_config) != NRF_SUCCESS){
            NRF_LOG_WARNING("I2c INIT FAILED!\n");
        }
}

void i2cSend(uint8_t device,uint8_t addr,uint8_t* data,uint8_t len){
     static uint8_t buffer[BUFFER_LENGTH]; // max length of send is set by this now we can send BUFFERLENGTH-1  uint8_t's, if messages longer than this needs to be sendt this must be incresed
      buffer[0]=addr; // need a seperate buffer to send address first :( 
      for(int i=0; i<len;i++){
          buffer[i+1]=data[i];
      }
      nrf_twi_mngr_transfer_t const SendTransfer[] ={
      NRF_TWI_MNGR_WRITE(device,&buffer,len+1,NRF_TWI_MNGR_NO_STOP),
      };
      xSemaphoreTake(i2cSemaphore,200);
      if(nrf_twi_mngr_perform(&m_nrf_twi_mngr, &bus_config, SendTransfer,1,NULL) != NRF_SUCCESS){
          NRF_LOG_WARNING("I2C send failed!\n");
      }
      xSemaphoreGive(i2cSemaphore);
}

void i2cRecive(uint8_t device, uint8_t addr, uint8_t* data, uint8_t len){
      nrf_twi_mngr_transfer_t const ReciveTransfer[] ={
      NRF_TWI_MNGR_WRITE(device,&addr,1,NRF_TWI_MNGR_NO_STOP),
      NRF_TWI_MNGR_READ(device,data,len,0)
      };
      xSemaphoreTake(i2cSemaphore,200);
      if(nrf_twi_mngr_perform(&m_nrf_twi_mngr, &bus_config, ReciveTransfer, 2, NULL) != NRF_SUCCESS){
          NRF_LOG_WARNING("I2C recive failed!\n");
      }
      xSemaphoreGive(i2cSemaphore);
}

void i2cSendNOADDR(uint8_t device, uint8_t* data, uint8_t len){
      nrf_twi_mngr_transfer_t const SendTransfer[] ={
      NRF_TWI_MNGR_WRITE(device,data,len,NRF_TWI_MNGR_NO_STOP),
      };
      xSemaphoreTake(i2cSemaphore,200);
      if(nrf_twi_mngr_perform(&m_nrf_twi_mngr, &bus_config, SendTransfer,1,NULL) != NRF_SUCCESS){
          NRF_LOG_WARNING("I2CsendNOADDR failed!\n");
      }
      xSemaphoreGive(i2cSemaphore);
}

void i2cReciveNOADDR(uint8_t device, uint8_t* data, uint8_t len){
      nrf_twi_mngr_transfer_t const ReciveTransfer[] ={
      NRF_TWI_MNGR_READ(device,data,len,0)
      };
      xSemaphoreTake(i2cSemaphore,200);
      if(nrf_twi_mngr_perform(&m_nrf_twi_mngr, &bus_config, ReciveTransfer, 1, NULL) != NRF_SUCCESS){
          NRF_LOG_WARNING("I2CreciveNOADDR failed!\n");
      }
      xSemaphoreGive(i2cSemaphore);
}


const nrf_twi_mngr_t* getTWIManagerAddress(){
        return &m_nrf_twi_mngr;
}

const nrf_drv_twi_config_t* getBusConfig(){
        return &bus_config;
}
  