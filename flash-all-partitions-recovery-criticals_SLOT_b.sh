#!/bin/bash

echo "Starting TWRP on the phone"
echo ""

sudo fastboot boot ./twrp-3.3.1-1-fajita.img

read -p "Wait for TWRP to start and then enter the main menu before continuing. Continue [Y/N]?" -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo adb push images/abl.img /sdcard &&
	sudo adb shell dd if=/sdcard/abl.img of=/dev/block/bootdevice/by-name/abl_b &&
	sudo adb push images/cmnlib.img /sdcard &&
	sudo adb shell dd if=/sdcard/cmnlib.img of=/dev/block/bootdevice/by-name/cmnlib_b &&
	sudo adb push images/cmnlib64.img /sdcard &&
	sudo adb shell dd if=/sdcard/cmnlib64.img of=/dev/block/bootdevice/by-name/cmnlib64_b &&
	sudo adb push images/devcfg.img /sdcard &&
	sudo adb shell dd if=/sdcard/devcfg.img of=/dev/block/bootdevice/by-name/devcfg_b &&
	sudo adb push images/hyp.img /sdcard &&
	sudo adb shell dd if=/sdcard/hyp.img of=/dev/block/bootdevice/by-name/hyp_b &&
	sudo adb push images/keymaster.img /sdcard &&
	sudo adb shell dd if=/sdcard/keymaster.img of=/dev/block/bootdevice/by-name/keymaster_b &&
	sudo adb push images/xbl.img /sdcard &&
	sudo adb shell dd if=/sdcard/xbl.img of=/dev/block/bootdevice/by-name/xbl_b &&
	sudo adb push images/xbl_config.img /sdcard &&
	sudo adb shell dd if=/sdcard/xbl_config.img of=/dev/block/bootdevice/by-name/xbl_config_b
fi
