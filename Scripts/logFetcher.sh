#!/bin/bash
source config.env
scp -i ../../Downloads/terraform-key.pem ubuntu@$ip_addr:/home/ubuntu/nginx_setup.log .
