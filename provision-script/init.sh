#!/bin/sh

cd /home/vagrant/

sudo apt-get update

virtuosoFile=/home/vagrant/pro-virtuoso.lock
if [ ! -e $virtuosoFile ]; then
		sudo apt-get install -y autoconf libtool bison flex gperf libssl1.0-dev
		git clone https://github.com/openlink/virtuoso-opensource.git
		cd /home/vagrant/virtuoso-opensource
		git checkout stable/7
		git pull origin stable/7
		sudo ./autogen.sh
		CFLAGS="-O2"
		export CFLAGS
		./configure --prefix=/usr/local/virtuoso
		make
		sudo make install
		cd /home/vagrant/
		echo 'export PATH="/usr/local/virtuoso/bin:$PATH"' >> ~/.profile
		export PATH="/usr/local/virtuoso/bin:$PATH"

		touch $virtuosoFile
fi



pythonFile=/home/vagrant/python.lock
if [ ! -e $pythonFile ]; then
	  sudo apt-get install -y python3-venv

		touch $pythonFile
fi


