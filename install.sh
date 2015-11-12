#!/bin/sh

# install.sh v1.0.3 11Nov2015

# Only for the big kids
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root/sudo." 
   exit 1
fi

scriptName="docker-clean"
installPath="/opt/$scriptName"
binPath="/usr/local/bin/$scriptName"

echo "Installing $scriptName..."

rm -rf $installPath
mkdir -p $installPath
cp -r * $installPath
ln -fs $installPath/$scriptName $binPath
chmod ugo+rx $binPath

$binPath -V

echo "Installation complete.\n"

