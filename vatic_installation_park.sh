#!/bin/bash

sudo apt-get update
sudo apt-get install -y git python-setuptools python-dev libavcodec-dev libavformat-dev libswscale-dev libjpeg62 libjpeg62-dev libfreetype6 libfreetype6-dev apache2 libapache2-mod-wsgi mysql-server-5.5 mysql-client-5.5 libmysqlclient-dev gfortran build-essential
sudo apt-get install autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev libjpeg-dev

#sudo a2enmod wsgi
#service apache2 restart

sudo apt-get install python-mysqldb python-pip


sudo pip install cython==0.20
sudo pip install -U SQLAlchemy wsgilog pillow mysql-python munkres parsedatetime argparse numpy


sudo ln -s /usr/lib/x86 64-linux-gnu/libjpeg.so /usr/lib
#sudo ln -s /usr/lib/x86 64-linux-gnu/libfreetype.so /usr/lib # already exist
#sudo ln -s /usr/lib/x86 64-linux-gnu/libz.so /usr/lib # already exist


sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install ffmpeg


git clone https://github.com/cvondrick/turkic.git
git clone https://github.com/cvondrick/pyvision.git
git clone https://github.com/cvondrick/vatic.git


cd turkic
sudo python setup.py install
cd ..

cd pyvision
sudo python setup.py install
cd ..
