#!/bin/sh

if [ ! "$(ls -A /home/mvf/hdd)" ] ; then
	sudo mount /dev/sdc1 /home/mvf/hdd
fi

