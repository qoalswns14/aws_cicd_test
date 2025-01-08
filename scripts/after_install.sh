#!/bin/bash
echo "Running AfterInstall script"
sudo mkdir -p /backup/
sudo cp -r /var/www/html/* /backup/

# GitHub에서 최신 코드 다운로드
echo "Cloning repository from GitHub..."
sudo git clone https://github.com/qoalswns14/aws_cicd_test.git /var/www/html/temp_repo

# 기존 폴더 삭제 및 새로운 폴더 복사
echo "Moving files to /var/www/html..."
sudo rm -rf /var/www/html/*
sudo cp -r /var/www/html/temp_repo/* /var/www/html/

# 임시 폴더 삭제
echo "Cleaning up temporary files..."
sudo rm -rf /var/www/html/temp_repo

# httpd 서비스 재시작
echo "Restarting httpd service..."
sudo systemctl restart httpd

echo "Deployment completed successfully."
