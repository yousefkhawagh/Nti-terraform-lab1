#!/bin/bash
dnf update -y
dnf install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from Apache on $(hostname)</h1>" > /var/www/html/index.html
