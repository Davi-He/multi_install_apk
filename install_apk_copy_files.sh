#!/bin/sh

MYDIR=`pwd`
APKDIR=$MYDIR/11_apk
FILESDIR=$MYDIR/12_files

cd $APKDIR
APK_LIST=`find -name "*.apk"`
echo $APK_LIST
adb wait-for-device
for apk in $APK_LIST;
do
	echo "installing $apk"
	adb install -r $apk
done

cd $MYDIR
adb push $FILESDIR /sdcard/
