#!/bin/bash

# Ścieżka do urządzenia
device="/dev/ttyUSB0"

# Sprawdź, czy urządzenie istnieje
if [ -e "$device" ]; then
    /bin/chmod 666 "$device"
    echo "Zmieniono uprawnienia (chmod 666) dla $device."
else
    echo "Urządzenie $device nie istnieje."
fi
