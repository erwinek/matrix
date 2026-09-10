#!/bin/bash
# Matrix Hammer: 64x832, ID=3, 13 paneli pionowo
# Nie uruchamiaj run_screen1.sh - ten produkt nie ma ekranu 192x192.

cd "$(dirname "$0")"
sudo ./led-image-viewer --config screen_config_hammer.ini
