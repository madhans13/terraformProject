#!/bin/bash

LOG_FILE="/home/ubuntu/nginx_setup.log"

sudo apt update -y | tee -a $LOG_FILE

sudo apt install nginx -y | tee -a $LOG_FILE

sudo systemctl enable nginx | tee -a $LOG_FILE
sudo systemctl start nginx | tee -a $LOG_FILE

echo "<h1>NGINX installed using Bash automation</h1>" | sudo tee /var/www/html/index.html

sudo systemctl status nginx --no-pager | tee -a $LOG_FILE
sudo apt install net-tools -y

sudo netstat -tulnp | grep 80 | tee -a $LOG_FILE

curl http://localhost | tee -a $LOG_FILE
curl http://localhost | tee -a $LOG_FILE
curl http://localhost | tee -a $LOG_FILE

sudo tail -n 20 /var/log/nginx/access.log | tee -a $LOG_FILE

SUCCESS_COUNT=$(sudo grep " 200 " /var/log/nginx/access.log | wc -l)
echo "Successful HTTP 200 responses: $SUCCESS_COUNT" | tee -a $LOG_FILE

