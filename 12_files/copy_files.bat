
adb wait-for-device

:pause

:for /d %%i in (*) do adb push -p "%%i" /sdcard/

adb push -p %cd% /sdcard/
pause
