#!/bin/sh

if [ $# -ne 1 ]
then
echo "Usage: bright 50"
exit
fi

x=$((($1*254)/100))
n=$(echo "ibase=10;obase=16;$x" | bc)

sudo setpci -s 00:02.0 F4.B="$n"
