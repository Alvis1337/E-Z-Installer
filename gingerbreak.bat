@echo off
cd C:\E-Z Installer\resources
@echo Are you sure you want to root with gingerbreak?
@pause
@echo Mounting.
adb shell rm -r /data/local/tmp
adb shell mkdir /data/local/tmp
@pause
@echo Pushing files.
adb push gingerbreak /data/local/tmp/gingerbreak
adb push su /data/local/tmp/su
adb push busybox /data/local/tmp/busybox
adb push Superuser.apk /data/local/tmp/Superuser.apk
adb push com.sh /data/local/tmp/com.sh
@pause
@echo Changing directory.
adb shell cd /data/local/tmp
@pause
@echo Setting permissions.
adb shell chmod 777 /data/local/tmp/*
@pause
@echo About to root are you sure?
@pause
adb shell ./data/local/tmp/gingerbreak
@echo Your phone is now rebooting and you are rooted using gingerbreak.
@pause
exit