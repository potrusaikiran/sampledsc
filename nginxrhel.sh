sudo yum update -y 

wget https://github.com/Microsoft/omi/releases/download/v1.1.0-0/omi-1.1.0.ssl_100.x64.rpm
wget https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_100.x64.rpm
sudo rpm -Uvh omi-1.1.0.ssl_100.x64.rpm dsc-1.1.1-294.ssl_100.x64.rpm

curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo
sudo yum install -y powershell
#pwsh
sudo yum install https://github.com/PowerShell/PowerShell/releases/download/v6.1.0-preview.3/powershell-preview-6.1.0-preview.3-1.rhel.7.x86_64.rpm
rpm -Uvh http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm
yum install nginx -y

sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx

sudo firewall-cmd --permanent --zone=public --add-service=http
#sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

sudo ss -tulpn


