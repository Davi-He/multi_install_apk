#!/bin/sh

MYDIR=`pwd`

cd $MYDIR
APK_LIST=`find -name "*.apk"`
adb wait-for-device
for apk in $APK_LIST;
do
	echo "installing $apk"
	adb install -r $apk
done
