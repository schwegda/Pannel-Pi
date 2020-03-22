Pannel-Pi Project 

Original Project and Ideas taken from https://hackaday.io/project/168517-openhab2-raspberry-pi-touch-display. 

Code modified for personal use. Original Code: https://github.com/ben5en/RPI_mqttClient_OpenHAB2

Script for temperature reading, monitor Key presence and WS2812b handling via MQTT for an openHAB2 environment. Option to switch on an off the used Monitor to couple with a motion sensor. 

This is the software running on an RPI 3 Model A+ I am using for a OpenHAB2 Raspberry Pi Touch Display 

Autostart under buster you can modify startup script: 

```bash
sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
```

Add those lines to call chromium browser in kosk mode and autostart the Pannl python script:
```bash
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@xscreensaver -no-splash

@sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium-browser Default/Preferences

@/home/pi/Pannelpi/kiosk.sh
@sudo python3 /home/pi/Pannelpi/pannelScript.py
```
