#!/bin/bash
#pouria khanzadi - May 2016
chmod a+x goback.sh
path="`pwd`/goback.sh"
str="alias goback='. $path'"
echo "#++goback+++++++++++++++++++" >> ~/.bashrc
echo "$str" >> ~/.bashrc
echo "#+++++++++++++++++++++++++++" >> ~/.bashrc
source ~/.bashrc
echo "goback is added to bashrc"
