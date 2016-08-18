#!/bin/sh

# This is the Ubuntu setup program

rm -f /etc/ppp/peers/linux_dial 
rm -f /etc/ppp/peers/linux_chat
rm -f /lib/udev/linux-dialup.sh 
rm -f /etc/udev/rules.d/40-linuxmodem.rules 
rm -f /lib/udev/rules.d/40-linuxmodem.rules


udevadm control --reload-rules

rm -rf ~/sprd


