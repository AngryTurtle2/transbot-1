#!/bin/bash

echo "remap the device serial port(ttyUSBX) to  vk-xxx"
echo "Transbot usb connection as /dev/vk-xxx , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy xxxx.rules to  /etc/udev/rules.d/"
sudo cp ~/transbot_ws/src/transbot/startup/rules.d/transbot.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
