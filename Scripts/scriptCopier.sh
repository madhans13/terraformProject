#!/bin/bash
source config.env
scp -i ../../Downloads/terraform-key.pem logScript.sh ubuntu@$ip_addr:/home/ubuntu/