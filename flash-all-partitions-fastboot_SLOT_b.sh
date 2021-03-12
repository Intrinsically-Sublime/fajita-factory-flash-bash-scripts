#!/bin/bash

sudo fastboot flash aop_b images/aop.img &&
sudo fastboot flash bluetooth_b images/bluetooth.img &&
sudo fastboot flash boot_b images/boot.img &&
sudo fastboot flash dsp_b images/dsp.img &&
sudo fastboot flash dtbo_b images/dtbo.img &&
sudo fastboot flash fw_4j1ed_b images/fw_4j1ed.img &&
sudo fastboot flash fw_4u1ea_b images/fw_4u1ea.img &&
sudo fastboot flash modem_b images/modem.img &&
sudo fastboot flash oem_stanvbk images/oem_stanvbk.img &&
sudo fastboot flash qupfw_b images/qupfw.img &&
sudo fastboot flash storsec_b images/storsec.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
sudo fastboot flash system_b images/system.img &&
sudo fastboot flash vbmeta_b images/vbmeta.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
sudo fastboot flash vendor_b images/vendor.img &&
sudo fastboot flash LOGO_b images/LOGO.img

