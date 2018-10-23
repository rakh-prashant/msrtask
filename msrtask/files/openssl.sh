#!/bin/bash
cd /tmp
wget https://www.openssl.org/source/openssl-1.1.1.tar.gz
tar xvf openssl-1.1.1.tar.gz
cd openssl-1.1.1
sudo ./config -Wl,--enable-new-dtags,-rpath,'$(LIBRPATH)'
sudo make
sudo make install
