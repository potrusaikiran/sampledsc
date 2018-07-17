mkdir /home/install 
cd /home/install 
wget http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
rpm -i nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
yum install nginx -y 
systemctl enable nginx 
systemctl start nginx
systemctl status nginx
sudo firewall-cmd --permanent --zone=public --add-service=http
#sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

