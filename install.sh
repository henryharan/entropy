#!/bin/bash

# MIT License

# Copyright (C) 2019, Entynetproject. All Rights Reserved.

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

N="\033[1;37m"
C="\033[0m"

CE="\033[0m"
RS="\033[1;31m"
YS="\033[1;33m"
BS="-e \033[34m"

R="\033[31m"

if [[ $EUID -ne 0 ]]
then
   echo "["$RS"*"$CE"] "$RS"This script must be run as "$YS"root"$CE"" 1>&2
   exit
fi

if [[ -d ~/entropy ]]
then
cd ~/entropy/bin
{
cp entropy /bin
cp entropy /usr/local/bin
chmod +x /bin/entropy
chmod +x /usr/local/bin/entropy
cd ~/entropy
} &> /dev/null
sleep 0.5
echo
cat banner/banner.txt
echo

if [[ -f /etc/entropy.conf ]]
then

CONF="$( cat /etc/entropy.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install python3
pkg install python3-pip
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

else

read -e -p $'Select your architecture (amd/intel/arm): ' CONF
if [[ "$CONF" = "" ]]
then
exit
else
if [[ "$CONF" = "arm" ]]
then
read -e -p $'Is this a single board computer (yes/no)? ' PI
if [[ "$PI" = "yes" ]]
then
echo "amd" >> /etc/entropy.conf
CONF="amd"
else
echo "$CONF" >> /etc/entropy.conf
fi
fi
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install python3
pkg install python3-pip
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi
fi

{
pip3 install setuptools
pip3 install -r related.txt
} &> /dev/null

else
cd ~
{
git clone https://github.com/entynetproject/entropy.git
cd ~/entropy/bin
cp entropy /bin
cp entropy /usr/local/bin
chmod +x /bin/entropy
chmod +x /usr/local/bin/entropy
cd ~/entropy
} &> /dev/null
sleep 0.5
echo
cat banner/banner.txt
echo

if [[ -f /etc/entropy.conf ]]
then

CONF="$( cat /etc/entropy.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install python3
pkg install python3-pip
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

else

read -e -p $'Select your architecture (amd/intel/arm): ' CONF
if [[ "$CONF" = "" ]]
then
exit
else
if [[ "$CONF" = "arm" ]]
then
read -e -p $'Is this a single board computer (yes/no)? ' PI
if [[ "$PI" = "yes" ]]
then
echo "amd" >> /etc/entropy.conf
CONF="amd"
else
echo "$CONF" >> /etc/entropy.conf
fi
fi
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install python3
pkg install python3-pip
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install python3
apt-get install python3-pip
fi
fi
fi

{
pip3 install setuptools
pip3 install -r requirements.txt
} &> /dev/null

fi
