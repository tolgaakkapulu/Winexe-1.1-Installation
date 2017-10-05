#!/bin/bash

echo -e "\e[31m+-+-+ WINEXE 1.1 Kurulumu +-+-+\e[0m\n"

echo -e "\e[1;34msudo apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git\e[0m"
sudo apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git
echo -e "\e[1;34mgit clone https://git.code.sf.net/p/winexe/winexe-waf winexe-winexe-waf\e[0m"
git clone https://git.code.sf.net/p/winexe/winexe-waf winexe-winexe-waf
echo -e "\e[1;34mwget https://download.samba.org/pub/samba/stable/samba-4.1.23.tar.gz\e[0m"
wget https://download.samba.org/pub/samba/stable/samba-4.1.23.tar.gz
echo -e "\e[1;34mtar zxvf samba-4.1.23.tar.gz\e[0m"
tar zxvf samba-4.1.23.tar.gz
echo -e "\e[1;34mcd winexe-winexe-waf/source\e[0m"
cd winexe-winexe-waf/source

sed "s/stlib='smb_static bsd z resolv rt'/stlib='smb_static z rt'/g" wscript_build
sed "s/lib='dl'/lib='dl resolv bsd'/g" wscript_build

echo -e "\e[1;34m./waf --samba-dir=../../samba-4.1.23 configure build\e[0m"
./waf --samba-dir=../../samba-4.1.23 configure build
echo -e "\e[1;34msudo cp build/winexe-static /usr/local/bin/winexe\e[0m"
sudo cp build/winexe-static /usr/local/bin/winexe


echo -e "\n\e[31mÖrnek Kullanim : \e[0m\e[1;34mwinexe -U domain/username%password //ip_address 'command'\e[0m"
echo -e "\n\e[31m+-+-+ WINEXE 1.1 Kurulumu Tamamlandi +-+-+\e[0m"
