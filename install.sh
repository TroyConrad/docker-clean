#!/bin/sh

# install.sh v1.0.1 04Nov2015

# Linux or bust!
osName=`uname`
if [ "$osName" != 'Linux' ]; then
	echo "Sorry, this script only works on Linux."
	exit
fi

scriptName=docker-clean
installPath=/opt/$scriptName
binPath=/usr/local/bin/$scriptName

echo "Installing $scriptName..."

mkdir -p $installPath
rm -rf $installPath/*
cp -r * $installPath
ln -fs $installPath/$scriptName $binPath
chmod ugo+rx $binPath
