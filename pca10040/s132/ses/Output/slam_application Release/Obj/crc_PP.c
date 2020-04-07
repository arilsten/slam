# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.c"
# 13 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.h" 1
# 15 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.h"
char calculate_crc(char *data, char len);
# 14 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.c" 2

char crc_ibutton_update(char crc, char data);

char calculate_crc(char *data, char len) {
  char crc = 0;
  int i;
  for(i=0;i<len;i++) {
    crc = crc_ibutton_update(crc, data[i]);
  }
  return crc;
}

char crc_ibutton_update(char crc, char data) {
  char i;
  crc = crc ^ data;
  for (i = 0; i < 8; i++) {
    if (crc & 0x01) crc = (crc >> 1) ^ 0x8C;
    else crc >>= 1;
  }
  return crc;
}
