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
#wget https://sl556.blob.core.windows.net/sample/index.zip 
#wget https://sl556.blob.core.windows.net/yop-test-rg/wwwroot.zip?sp=r&st=2018-07-02T13:42:37Z&se=2018-08-31T21:42:37Z&spr=https&sv=2017-11-09&sig=00jO%2B1SZRRZP3OEghqn8uUvXxtv3dpw33BMguceuoHE%3D&sr=b
#wget "https://sl556.blob.core.windows.net/yop-test-rg/wwwroot.zip?sp=r&st=2018-07-02T13:42:37Z&se=2018-08-31T21:42:37Z&spr=https&sv=2017-11-09&sig=00jO%2B1SZRRZP3OEghqn8uUvXxtv3dpw33BMguceuoHE%3D&sr=b" -k -O wwwroot.zip
mv /var/lib/waagent/custom-script/download/0/index.zip /usr/share/nginx/html
rm -f index.html
unzip index.zip
