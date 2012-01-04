@echo off
cd C:\E-Z Installer\resources
@echo Press any key to reboot your phone watch for superuser prompt.
@pause
adb shell su -c "reboot"
@exit