#!/bin/bash
echo "Running AfterInstall script"
sudo mkdir -p /backup/
sudo cp -r /var/www/html/* /backup/

