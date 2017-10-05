# Winexe 1.1 Kurulumu | Winexe 1.1 Installation - Ubuntu 12.04-14.04-16.04
<b>Winexe 1.1 Kurulumu - Winexe 1.1 Installation - Ubuntu 12.04-14.04-16.04</b>
<ul>
 <li>
sudo apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git</li>
<li>
git clone https://git.code.sf.net/p/winexe/winexe-waf winexe-winexe-waf
  </li>
  <li>
wget https://download.samba.org/pub/samba/stable/samba-4.1.23.tar.gz
  </li>
  <li>
tar zxvf samba-4.1.23.tar.gz
  </li>
  <li>
cd winexe-winexe-waf/source
  </li>
  <li>
vi wscript_build
  
        -        stlib='smb_static bsd z resolv rt',
        -        lib='dl'
        +        stlib='smb_static z rt',
        +        lib='dl resolv bsd'</li>
<li>
./waf --samba-dir=../../samba-4.1.23 configure build
  </li>
  <li>
sudo cp build/winexe-static /usr/local/bin/winexe
  </li>
  </ul>
