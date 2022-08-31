#! /bin/bash

#Update Servers
echo "Update Server"
yum -y update
#Finish Update
echo "Update Finish"

echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------  Backend Config Install  --------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"




#Set Repo's
echo "epel release repo && remi release entreprise repo"
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm 

#Install utils
echo "Install yum-utils"
yum -y install yum-utils -y 

#disable repo php5 and set repo php74
echo "enable php 7.4"
yum-config-manager --disable remi-php54 && yum-config-manager --enable remi-php74

#Install php 
echo "PHP Install"
yum -y install php php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json php-pdo php-pecl-apcu php-pecl-apcu-devel
yum -y install php-igbinary php-imap php-ldap php-memcache php-memcached php-msgpack php-pdo_dblib php-pdo_pgsql php-pgsql php-redis php-tidy php-wddx php-opcache
yum -y install cifs-utils nfs-utils

#Composer install
echo "Install Composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#Nginx install
echo "Nginx Install"
yum -y install epel-release && yum -y install nginx

systemctl enable nginx && systemctl enable php-fpm
yum -y install rsync wget curl htop iftop git 
firewall-cmd --zone=public --add-port=80/tcp --permanent && firewall-cmd --reload
echo "complete back configuration!!!"
echo ""
echo ""
echo ""
echo ""
echo ""
echo "Enjoy!!!"

echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------  Fronted Config Install  --------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"


##nodejs install
echo "Nodejs Install"
curl -fsSL https://rpm.nodesource.com/setup_16.x | bash -
yum install -y nodejs
echo "Node version"
node -v
echo "NPM version"
npm -v

#Angular install
echo "Angular Install"
npm install -g @angular/cli@10.2.4

echo "Angular version"

ng --version

echo "complete front configuration!!!"
echo ""
echo ""
echo ""
echo ""
echo ""
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"
echo "Enjoy!!!"


