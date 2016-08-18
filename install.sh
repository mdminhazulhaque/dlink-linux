#!/bin/sh

# This is the Ubuntu setup program
cp -f bin/linux_dial /etc/ppp/peers/ 
cp -f bin/linux_chat /etc/ppp/peers/ 

cp -f bin/linux-dialup.sh /lib/udev/
cp -f bin/40-linuxmodem.rules /etc/udev/rules.d/
cp -f bin/40-linuxmodem.rules /lib/udev/rules.d/
sudo rm /etc/resolv.conf
cp -f bin/resolv.conf /etc/

udevadm control --reload-rules

mkdir ~/dlink
mkdir ~/dlink/bin
cp -f uninstall.sh ~/dlink/
cp -f install.sh ~/dlink/
cp -f bin/linux_dial ~/dlink/bin/
cp -f bin/linux_chat ~/dlink/bin/
cp -f bin/linux-dialup.sh ~/dlink/bin/
cp -f bin/40-linuxmodem.rules ~/dlink/bin/

# eject cd-rom to re-enum ports
ls /dev/sr* > ~/temp.out
list=$(cat ~/temp.out)
for var in $list
 do  
  eject $var
 done
rm -f ~/temp.out

exit
