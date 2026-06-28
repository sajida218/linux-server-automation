#!/bin/bash

echo "Updating packages..."
sudo apt update

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Starting Nginx..."
sudo systemctl start nginx

echo "Enabling Nginx on boot..."
sudo systemctl enable nginx

echo "Creating sample webpage..."

sudo tee /var/www/html/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Linux Server Automation</title>
</head>
<body>
    <h1>Nginx Installed Successfully!</h1>
    <p>This page was deployed automatically using a Bash script.</p>
</body>
</html>
EOF

echo "Done!"
echo "Visit: http://YOUR_PUBLIC_IP"