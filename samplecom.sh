mkdir /home/saikiran 
cd /home/saikiran 
wget http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
chmod 755 nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
rpm -i nginx-release-rhel-7-0.el7.ngx.noarch.rpm 
yum install nginx -y
