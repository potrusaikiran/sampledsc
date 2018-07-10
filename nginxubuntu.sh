sudo apt-get update -y 
sudo apt-get install nginx -y 

sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx

sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

cd /var/www/html 
wget https://sl556.blob.core.windows.net/sample/index.zip 
sudo apt-get install unzip 
unzip index.zip
