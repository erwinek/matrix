#!/bin/bash

# Ścieżka do pliku konfiguracyjnego
config_file="/boot/firmware/screen_id.txt"

# Sprawdź, czy plik istnieje
if [ ! -f "$config_file" ]; then
    echo "Plik konfiguracyjny $config_file nie istnieje."
    exit 1
fi

# Wczytaj pierwszy znak z pliku i usuń ewentualne białe znaki
screen_id=$(head -c 1 "$config_file" | tr -d '\n\r ')

# Wybór skryptu na podstawie wartości
case "$screen_id" in
    1)
        echo "Uruchamiam scren 1"
	sudo /home/pi/matrix/led-image-viewer --config screen_config.ini --no-diagnostics
        ;;
    2)
        echo "Uruchamiam scren 2"
        sudo /home/pi/matrix/led-image-viewer --config screen_config_vertical.ini --no-diagnostics
        ;;
    *)
	sudo /home/pi/matrix/led-image-viewer --config screen_config.ini
        
        ;;
esac
