#! /bin/sh

if [ ! -x /usr/bin/make ] \
|| [ ! -x /usr/bin/go ] \
|| [ ! -x /usr/bin/git ] ;
then
	echo 'One the following dependencies is not intalled: \
		"base-devel" \
		"git" \
		"go"'
	echo 'Yay needs those packages as dependencies'
	exit
fi

if [ -x /usr/bin/yay ] ; then
	echo 'Yay is already installed'
	exit
fi
	
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay