#!/bin/bash
STOP_SCF=0
#FILE=/media/user/flash_drive/flag.file   # WARNING! Set this variable to the flag file on your USB Drive.
#DISK=/dev/sda   # WARNING! Set this variable to your device path. Be careful! Running this script will destroy your data.


exec_not_usb() {
STOP_SCF=2
dd if=/dev/urandom of=${DISK} bs=1M   # This command will populate given device with random data. BE CAREFUL!
}

check_usb() {
if test -f "$FILE";
then
    status=true
else
    status=false
fi

}

until [ $STOP_SCF -gt 1 ]
do
  sleep 3
  check_usb $FILE
  echo "$status"
  if [ "$status" = false ]; then exec_not_usb; fi
done

