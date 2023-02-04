#!/usr/bin/bash

PREFIX="⚑"
GREEN="%{B#0aa00a}"
YELLOW="%{B#a2a00a}"
RED="%{B#a2200a}"
BLACK="%{F#101010}"


ip route | grep default > /dev/null
if [[ $? != 0 ]];then
	echo "%{B#3c2864}" $BLACK $PREFIX LOCAL
	exit 0
fi


ping 8.8.8.8 -W 1 -s 1 -c 1 > /dev/null
if [[ $? == 0 ]];then
    echo $GREEN $BLACK $PREFIX "INTERNET"
    exit 0
fi

ping 190.92.127.78 -W 1 -s 1 -c 1 > /dev/null
if [[ $? == 0 ]];then
    echo $YELLOW $BLACK $PREFIX "INTRANET"
    exit 0
fi

ping 10.180.0.30 -W 1 -s 1 -c 1 > /dev/null
if [[ $? == 0 ]];then
    echo $RED $BLACK $PREFIX "PORTAL"
    exit 0
fi

ping 10.0.0.4 -W 1 -s 1 -c 1 > /dev/null
if [[ $? == 0 ]];then
    echo $RED $BLACK $PREFIX "UCI"
    exit 0
fi

echo "%{B#3c2864}" $BLACK $PREFIX LOCAL
