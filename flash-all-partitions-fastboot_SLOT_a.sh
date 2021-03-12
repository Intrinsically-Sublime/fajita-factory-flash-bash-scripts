#!/bin/bash

sudo fastboot flash aop_a images/aop.img &&
sudo fastboot flash bluetooth_a images/bluetooth.img &&
sudo fastboot flash boot_a images/boot.img &&
sudo fastboot flash dsp_a images/dsp.img &&
sudo fastboot flash dtbo_a images/dtbo.img &&
sudo fastboot flash fw_4j1ed_a images/fw_4j1ed.img &&
sudo fastboot flash fw_4u1ea_a images/fw_4u1ea.img &&
sudo fastboot flash modem_a images/modem.img &&
sudo fastboot flash oem_stanvbk images/oem_stanvbk.img &&
sudo fastboot flash qupfw_a images/qupfw.img &&
sudo fastboot flash storsec_a images/storsec.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
sudo fastboot flash system_a images/system.img &&
sudo fastboot flash vbmeta_a images/vbmeta.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
sudo fastboot flash vendor_a images/vendor.img &&
sudo fastboot flash LOGO_a images/LOGO.img
