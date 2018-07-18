if [ $1 = "y" ]
then
mkdir /home/install 
cd /home/install 
wget http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
rpm -i nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
yum install nginx -y 
systemctl enable nginx 
systemctl start nginx
systemctl status nginx
firewall-cmd --permanent --zone=public --add-service=http
#sudo firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
cd  /usr/share/nginx/html
yum install unzip -y
mv /var/lib/waagent/custom-script/download/0/index.zip /usr/share/nginx/html
rm -f index.html
unzip index.zip
else
apt-get update -y 
apt-get install nginx -y 
systemctl enable nginx
systemctl start nginx
systemctl status nginx
firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
cd /var/www/html 
mv /var/lib/waagent/custom-script/download/0/index.zip /var/www/html
apt-get install unzip 
unzip index.zip
fi
