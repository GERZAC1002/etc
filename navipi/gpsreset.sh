#!/bin/bash

sudo pkill gpsd
sudo pkill navit
echo 'Schlafe'
sleep 2
if [ /dev/ttyACM0 != NULL ]; then
	gpsd /dev/ttyACM0
	navit
fi
if [ /dev/ttyACM1 != NULL ];then
	gpsd /dev/ttyACM1
	navit
fi
