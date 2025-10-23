# matrix
Boxer Moster LED Matrix binary

#Service: /etc/systemd/system/matrix.service

[Unit]
Description=LED Matrix
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/erwinek/matrix
ExecStart=/home/erwinek/matrix/qt-rgb-led -platform offscreen
Restart=always
User=root
LimitCORE=infinity

[Install]
WantedBy=multi-user.target


sudo systemctl daemon-reload

sudo systemctl enable matrix.service

sudo systemctl start matrix.service

sudo systemctl status matrix.service
journalctl -u matrix.service -f
