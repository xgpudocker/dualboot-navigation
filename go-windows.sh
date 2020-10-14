#!/bin/bash
WINDOWS_TITLE=`grep -i 'Windows' /boot/grub/grub.cfg|cut -d"'" -f2`
#`grep menuentry /boot/grub/grub.cfg  | grep --line-number osprober`
#MENU_NUMBER=$(( `echo $WINDOWS_TITLE | sed -e "s/:.*//"` - 1 ))
sudo grub-reboot "$WINDOWS_TITLE"
#echo $MENU_NUMBER
echo $WINDOWS_TITLE
sudo reboot

