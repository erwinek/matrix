#!/bin/bash
# Uruchomienie ekranu #1 (192x192, ID=1)
# Run screen #1 (192x192, ID=1)

cd "$(dirname "$0")"
sudo ./led-image-viewer --config screen_config.ini

