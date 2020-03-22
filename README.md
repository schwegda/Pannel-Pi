# Pannel-Pi Project 

Original Project and Ideas taken from https://hackaday.io/project/168517-openhab2-raspberry-pi-touch-display. 

Code modified for personal use. Original Code: https://github.com/ben5en/RPI_mqttClient_OpenHAB2

Script for temperature reading, monitor Key presence and WS2812b handling via MQTT for an openHAB2 environment. Option to switch on an off the used Monitor to couple with a motion sensor. 

This is the software running on an RPI 3 Model A+ I am using for a OpenHAB2 Raspberry Pi Touch Display 

## Installation

Use followig commans to prepare your Raspberry pi

```bash
sudo apt-get install rpi.gpio chromium-browser unclutter xrdp

sudo apt-get install python3-pip
sudo pip3 install --upgrade setuptools
sudo pip3 install paho-mqtt
```

1. install Adafruit blinka like, but with root support (sudo): https://learn.adafruit.com/circuitpython-on-raspberrypi-linux/installing-circuitpython-on-raspberry-pi

2. install Adafruit BMP280 lib like: https://learn.adafruit.com/adafruit-bmp280-barometric-pressure-plus-temperature-sensor-breakout/circuitpython-test

3. install Adafruit Neopixels like: https://learn.adafruit.com/adafruit-neopixel-uberguide/python-circuitpython



## Use scripts on startup
For autostart under buster, modify startup script: 

```bash
sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
```

Add lines below to call chromium browser in kosk mode and autostart the Pannel python script:
```bash
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@xscreensaver -no-splash

@sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium-browser Default/Preferences

@/home/pi/Pannelpi/kiosk.sh
@sudo python3 /home/pi/Pannelpi/pannelScript.py
```
