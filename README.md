<h3>Winexe 1.1</h3>

<b>Winexe 1.1 Installation - Ubuntu 14.04-16.04-18.04</b>
<ul>
 <li>
apt-get -y install gcc-mingw-w64 comerr-dev libpopt-dev libbsd-dev zlib1g-dev libc6-dev python-dev libacl1-dev libldap2-dev git</li>
  <li>
git clone "https://github.com/tolgaakkapulu/Winexe-1.1-Installation"
  </li>
 <li>
cd Winexe-1.1-Installation
  </li>
  <li> 
tar xzf samba-4.1.23.tar.gz
  </li>
  <li>
tar xzf winexe-winexe-waf.tar.gz
  </li>
  <li>
cd winexe-winexe-waf/source/
  </li>
  <li>
sed -i "s/stlib='smb_static bsd z resolv rt'/stlib='smb_static z rt'/g" wscript_build
  </li>
  <li>
sed -i "s/lib='dl'/lib='dl resolv bsd'/g" wscript_build
  <li>
chmod +x waf 
   </li>
  <li>
./waf --samba-dir=../../samba-4.1.23 configure build
  </li>
  <li>
cp build/winexe-static /usr/local/bin/winexe
  </li>
  </ul>
