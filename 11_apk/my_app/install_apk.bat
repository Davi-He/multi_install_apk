
adb wait-for-device

:pause

for %%i in (*.apk) do adb install -r "%%i"

pause
