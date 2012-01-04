@echo off
cd C:\E-Z Installer\resources
@echo Are you sure you want to flash dsrellisdee's custom recovery?
@pause
@echo PLEASE WATCH FOR SUPERUSER PROMPTS
@pause
@echo Pushing files...
adb push recovery-RA-GNM-thunderc-s-1.1.0.img /sdcard/
@Echo Mounting...
adb shell su -c "mount -o remount,rw -t yaffs2 /dev/block/mtdblock5 /system"
@echo Replacing flash_image...
adb shell su -c "cat /sdcard/flash_image > /system/bin/flash_image"
@pause
adb shell su -c "chmod 755 /system/bin/flash_image"
@pause
@Echo removing stock recovery installer, if you get a error its ok, it just means that it has already been deleted...
adb shell su -c "mv /system/etc/install-recovery.sh /system/etc/install-recovery.sh.bak"
@pause
@echo Mounting...
adb shell su -c "mount -o remount,ro -t yaffs2 /dev/block/mtdblock5 /system"
@pause
@echo Installing the recovery, this might take a while...
adb shell su -c "flash_image recovery /sdcard/recovery-RA-GNM-thunderc-s-1.1.0.img"
@pause
@echo Your phone is rebooting into recovery mode and has dsrellisdee's custom recovery, if you do not see more than 4 options, this did not sucessfully work.
adb shell su -c "reboot recovery"
@pause
@exit