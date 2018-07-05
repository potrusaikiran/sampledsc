sudo apt-get update -y 
sudo apt-get install nginx -y 
cd /var/www/html 
wget https://sl556.blob.core.windows.net/sample/index.zip 
apt-get install unzip && unzip index.zip
#Powershell configuration
# Download and install the OMI
wget https://github.com/Microsoft/omi/releases/download/v1.1.0-0/omi-1.1.0.ssl_100.x64.deb
sudo dpkg -i ./omi-1.1.0.ssl_100.x64.deb
#Download and install the DSC 
wget https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_100.x64.deb
sudo dpkg -i ./dsc-1.1.1-294.ssl_100.x64.deb
#Restart OMI
sudo /opt/omi/bin/service_control restart
