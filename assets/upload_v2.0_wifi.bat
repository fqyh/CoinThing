python -m esptool erase_flash
python -m esptool --before default_reset --after hard_reset --chip esp8266 --baud 921600 write_flash 0x0 cointhing_v2.0.0.bin 0x200000 spiffs_v2.0.0_wifi.bin

pio device monitor -b 115200