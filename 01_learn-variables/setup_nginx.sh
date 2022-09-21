#!/bin/bash
apt update
apt -y install nginx
echo Create: ${time} | sudo tee /var/www/html/index.html