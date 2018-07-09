#updating modules and install nginx
      sudo apt-get update -y 
     # sudo apt-get install nginx -y 
     # cd /var/www/html 
     # wget https://sl556.blob.core.windows.net/sample/index.zip 
     # apt-get install unzip 
     # unzip index.zip
     #sudo apt-get remove nginx nginx-common
#Powershell configuration
     #cd
     #mkdir psdc
     #cd psdc
#wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-beta.8/powershell_6.0.0-beta.8-1.ubuntu.16.04_amd64.deb
#sudo dpkg -i ./powershell_6.0.0-beta.8-1.ubuntu.16.04_amd64.deb
wget https://github.com/Microsoft/omi/releases/download/v1.1.0-0/omi-1.1.0.ssl_100.x64.deb
wget https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_100.x64.deb
sudo dpkg -i omi-1.1.0.ssl_100.x64.deb dsc-1.1.1-294.ssl_100.x64.deb
#sudo apt-get install -f
sudo apt-get install -y powershell
apt-get -f install -y
# Download and install the OMI
wget https://github.com/Microsoft/omi/releases/download/v1.1.0-0/omi-1.1.0.ssl_100.x64.deb
sudo dpkg -i ./omi-1.1.0.ssl_100.x64.deb
#Download and install the DSC 
wget https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_100.x64.deb
sudo dpkg -i ./dsc-1.1.1-294.ssl_100.x64.deb
#Restart OMI
sudo /opt/omi/bin/service_control restart
#configuration modules
sudo powershell
#Install-Module PSDesiredStateConfiguration
#Install-Module nx -f
#wget https://raw.githubusercontent.com/potrusaikiran/sampledsc/master/nginx.ps1
#./nginx.ps1
