#!/bin/bash
apt-get update -y

curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh | bash -

bash nodesource_setup.sh

apt-get install nodejs -y
apt-get install npm
node -v | grep v8
npm install -g pm2

export app_root=/opt/sample

if [ -d "$app_root" ];then
  rm -rf /opt/sample
  mkdir -p /opt/sample
else
  mkdir -p /opt/sample
fi
