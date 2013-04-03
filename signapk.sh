#!/bin/bash
# Sample usage is as follows;
# ./signapk myapp.apk debug.keystore android androiddebugkey
# 
# param1, APK file: Calculator_debug.apk
# param2, keystore location: ~/.android/debug.keystore
# param3, key storepass: android
# param4, key alias: androiddebugkey

APK=$1
KEYSTORE=$2
STOREPASS=$3
ALIAS=$4
# get the filename
APK_BASENAME=$(basename $APK)


SIGNED_APK="signed_"$APK_BASENAME

#debug
#echo param1 $APK
#echo param2 $KEYSTORE
#echo param3 $STOREPASS
#echo param4 $SIGNED_APK

# delete META-INF folder
zip -d $APK META-INF/\*

# sign APK
jarsigner -verbose -keystore $KEYSTORE -storepass $STOREPASS $APK $ALIAS
#verify
jarsigner -verify $APK

#zipalign
zipalign -v 4 $APK $SIGNED_APK 