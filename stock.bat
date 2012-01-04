@echo off
cd C:\E-Z Installer\resources
@echo Are you sure you want to return to stock recovery?
@pause
@echo Pushing files.
@adb push stockv9.img /sdcard/
@adb push flash_image /sdcard/
@pause
@echo Flashing the recovery.
@adb shell su -c "mount -o remount,rw -t yaffs2 /dev/block/mtdblock5 /system"
@adb shell su -c "cat /sdcard/flash_image > /system/bin/flash_image"
@adb shell su -c "chmod 755 /system/bin/flash_image"
@adb shell su -c "mv /system/etc/install-recovery.sh /system/etc/install-recovery.sh.bak"
@adb shell su -c "mount -o remount,ro -t yaffs2 /dev/block/mtdblock5 /system"
@adb shell su -c "flash_image recovery /sdcard/stockv9.img"
@adb shell su -c "rm -r /sdcard/stockv9.img"
@echo You now have stock recovery, your phone will reboot into recovery mode.
@pause
@adb shell su reboot recovery
exit