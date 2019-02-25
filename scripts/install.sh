#!/bin/bash
apt-get update
apt install -y curl gnupg2 ca-certificates lsb-release
echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
  | sudo tee /etc/apt/sources.list.d/nginx.list
curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
apt update
apt install nginx
mkdir -p /data/www
mkdir -p /data/images
cp /vagrant/scripts/default.conf /etc/nginx/conf.d/default.conf
nginx
