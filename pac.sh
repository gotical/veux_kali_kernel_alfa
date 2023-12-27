#!/bin/bash
CDATE=$(date +"%m.%d_%I-%M_%p")
rm ./Image
cp ./out/arch/arm64/boot/Image ./Image
cp ./empty.zip ./kernel_$CDATE.zip
zip ./kernel_$CDATE.zip Image
zip -j ./kernel_$CDATE.zip ./out/.config
rm ./Image
zip -j ./module_$CDATE.zip ./out/extra_tools/drivers/rtl8812au/88XXau.ko
zip -j ./module_$CDATE.zip ./out/extra_tools/drivers/rtl8814au/8814au.ko




