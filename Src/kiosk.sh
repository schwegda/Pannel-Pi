#!/bin/bash
# set the diplay to use
export DISPLAY=":0.0"

# enable Power management 
xset +dpms

# hide the mouse
unclutter -root &

# start chromium in Kiok mode
DISPLAY=:0.0 chromium-browser --noerrdialogs --disable-infobars --kiosk <enter path to your hab Pannel here> &

# auto refresh chromium
while true; do
   xdotool key "ctrl+F5" &
   sleep 300
done
