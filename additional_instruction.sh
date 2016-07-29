# 1
sudo cp /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.backup
sudo gedit /etc/apache2/sites-enabled/000-default.conf
# delete every thing in conf
# then add under paragraph

WSGIDaemonProcess www-data
WSGIProcessGroup www-data

<VirtualHost *:80>
    ServerName vatic.domain.edu
    DocumentRoot /home/cvl/vatic/vatic/public

    WSGIScriptAlias /server /home/cvl/vatic/vatic/server.py
    CustomLog /var/log/apache2/access.log combined
</VirtualHost>

# 2
sudo gedit /etc/apache2/apache2.conf
ServerName localhost # add anyplace

<Directory />
	Options FollowSymLinks
	AllowOverride None
	Require all granted # changed from denied to granted 
</Directory>


#sudo gedit /etc/mysql/my.cnf
#bind-address comment outs


# 3
sudo cp /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled
sudo apache2ctl graceful


# 4
$ mysql -u root
mysql> create database vatic;


# 5
cd ~/vatic/vatic
cp config.py-example config.py
#sudo gedit config.py # In case of using only in local, it doesn't have to be changed.

# 6
turkic setup --database
turkic setup --public-symlink
turkic status --verify


#turkic setup --database --reset


