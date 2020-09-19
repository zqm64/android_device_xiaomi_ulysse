#!/system/bin/sh
DELETE_FILE="/system/etc/permissions/android.hardware.fingerprint.xml"

if [ -f $DELETE_FILE ]
then
mount -o remount,rw,discard /system
rm $DELETE_FILE
mount -o remount,ro /system
fi
