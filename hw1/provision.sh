yum install -y epel-release
yum install -y httpd
sudo cp /vagrant/www/index.html /var/www/html/
systemctl start httpd
systemctl enable httpd