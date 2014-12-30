cd 01_adb_tools

adb wait-for-device

:pause

for %%i in (..\11_apk\*.apk) do adb install -r "%%i"

adb push "..\12_files" /sdcard/
pause
