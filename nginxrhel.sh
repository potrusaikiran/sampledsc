
echo Welcome@123456 | sudo -S ls /tmp
sudo -i
rpm -Uvh http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm
sudo yum install nginx -y

sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx

sudo firewall-cmd --permanent --zone=public --add-service=http
#sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

sudo ss -tulpn


