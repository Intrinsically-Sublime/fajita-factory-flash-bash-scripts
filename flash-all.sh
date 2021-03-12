#!/bin/bash


read -p "Do you want to wipe all the data ( recommended )[Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo ""
	echo "** If wiping data fails but the install is successful ignore the error **"
	echo "** If the install fails please boot into TWRP and use Wipe/Format first **"
	echo ""
	sudo fastboot -w
fi

read -p "Do you want to flash the system 'a' partitions [Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	./flash-all-partitions-fastboot_SLOT_a.sh
fi

read -p "Do you want to flash the system 'b' partitions [Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	./flash-all-partitions-fastboot_SLOT_b.sh
fi

read -p "Do you want to flash 'persist' [Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo fastboot flash persist images/persist.img
fi

read -p "Do you want to flash the recovery 'a' partitions [Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	./flash-all-partitions-recovery-criticals_SLOT_a.sh &&
	echo ""
	echo "Please wait while the phone reboots to the bootloader before proceeding to the next step."
	sudo adb reboot bootloader
	echo ""
fi

read -p "Do you want to flash the recovery 'b' partitions [Y/N]?" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
	./flash-all-partitions-recovery-criticals_SLOT_b.sh
fi

echo ""
echo "Please wait while the phone reboots. Be patient."
sudo adb reboot
echo ""

