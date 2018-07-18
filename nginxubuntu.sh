apt-get update -y 
apt-get install nginx -y 

systemctl enable nginx
systemctl start nginx
systemctl status nginx

firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload

cd /var/www/html 
#wget https://sl556.blob.core.windows.net/sample/index.zip 
mv /var/lib/waagent/custom-script/download/0/index.zip /var/www/html
#rm -f index.html
apt-get install unzip 
unzip index.zip
