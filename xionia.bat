@echo off
cd C:\E-Z Installer\resources
Echo Getting ready to Flash Xionia Custom Recovery please watch your phone for superuser prompts.... 
Pause

adb shell su -c "mount -o remount,rw -t yaffs2 /dev/block/mtdblock5 /system"
Echo Step 1 of 7 - File system mounted
pause

adb push xionia_cwma_12518.6.img /sdcard/xionia_cwma_12518.6.img
adb push flash_image /sdcard/flash_image
@echo Step 2 of 7 - Files copied to SD Card
pause

adb shell su -c "cat /sdcard/flash_image > /system/bin/flash_image"
Echo Step 3 of 7 - Moved flash_image to bin folder
pause

adb shell su -c "chmod 755 /system/bin/flash_image"
echo Step 4 of 7 - Set permission on flash_image
pause

adb shell su -c "mv /system/etc/install-recovery.sh /system/etc/install-recovery.sh.bak"
Echo Step 5 of 7 - Backup old SH file
echo If you just got an error, dont worry about it...
pause

adb shell su -c "mount -o remount,ro -t yaffs2 /dev/block/mtdblock5 /system"
Echo Step 6 of 7 - Remounting file system
pause

Echo step 7 of 7 - Momentary pause while flashing recovery image...
adb shell su -c "flash_image recovery /sdcard/xionia_cwma_12518.6.img"
Echo All done! Time to reboot and make your first back up!
pause 

adb shell su -c "reboot recovery"

exit