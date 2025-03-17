#!/usr/bin/env bash
sudo apt update #&& sudo apt install nodejs npm
sudo apt install nodejs
sudo apt install npm
sudo npm install -g pm2
pm2 stop ca_app
cd DOS_CA_Application/
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
pm2 start ./bin/www --name ca_app