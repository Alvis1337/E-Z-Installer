@echo off
cd C:\E-Z Installer\resources
@echo Press any key to reboot into recovery and look for superuser prompts, if you don't have superuser you can do this manually by unplugging your phone, if plugged in, and holding down (in this order) home + volume up + power, and hold until you see your recovery screen.
@pause
adb shell su -c "reboot recovery"
@exit