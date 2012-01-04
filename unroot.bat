@echo off
echo Your are about to unroot your optimus s are you sure? WATCH FOR SUPERUSER PROMPTS!
@pause
mount -o remount,rw /system /system
@pause
@echo Deleting BusyBox...
adb shell rm -r /system/xbin/busybox
@pause
adb shell rm -r /system/bin/busybox
@pause
adb shell rm -r /system/bin/su
@pause
adb shell rm -r /system/xbin/su
@pause
@echo Deleting Superuser...
adb shell rm /system/app/Superuser.apk
adb shell rm /data/app/Superuser.apk
@pause
@echo You are now sucessfuly unrooted, if you still see Superuser in your app drawer then something must have went wrong, please make sure you have drivers for the device and USB debugging enabled.
@pause