#!/bin/bash
#:::::::::::::::::::goback-version 0.1 :::::::::::::::::::::::::::::::::
#::::::::2016-May:::::::::::::::::::::::::::::::::::::::::::::::::::::::
#::::::::Pouria Khanzadi :::::::::::::::::::::::::::::::::::::::::::::::
if [ $1 == $1 ];then
	counter=1
	while [[ $counter -le $1 ]];do
		cd ..
		((counter++))
	done
	echo "now you are in : "$(pwd)
fi

function steps2root() {
 steps2root=$(pwd|tr [/] '\n'|wc -l)
 echo "number of steps to root : "$((steps2root-1))
}
help="goback is a simple script that help to go back in your path .for example 
you are in : /home/user/Music , for example use : goback 2 , now you are in /home "
OPTIND=1
while getopts ":sh" option; do 
	case $option in 
		s) steps2root >&2
		;;
        h) echo $help >&2
        ;;
	   \?) echo "incorrect option!, please use -h" >&2
	    ;;
	esac
done

