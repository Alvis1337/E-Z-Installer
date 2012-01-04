@echo off
cd C:\E-Z Installer\resources
@echo Are you sure you want to uninstall Sprint ID?
@pause
@echo Mounting system as R-W
adb shell su -c "mount -o rw,remount -t yaffs2 /dev/block/mtdblock5 /system"
@pause
adb shell su -c "rm -r /system/app/SprintZone.apk"
@pause
adb shell su -c "rm -r /system/app/W_Installer.apk"
@echo Sprint ID was successfully removed.
@pause
exit