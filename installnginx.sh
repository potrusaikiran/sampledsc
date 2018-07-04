sudo apt-get update -y 
sudo apt-get install nginx -y 
cd /var/www/html 
wget https://sl556.blob.core.windows.net/sample/index.zip 
apt-get install unzip && unzip index.zip