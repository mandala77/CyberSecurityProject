#!/bin/bash

if [ "$#" -ne 2 ];
then
    echo "You should enter 2 arguments. First one for date in MMDD format and Second one for time in hh:mm:ss am/pm format"
    exit
fi

#i=1;
#for j in "$@" 
#do
#    echo "var$i - $i: $j";
#    i=$((i + 1));
#done

str="$2"
subtime=${str:0:8}
subampm=${str:9:2}

#echo $subtime
#echo $subampm

#echo $str
#echo "$1"
#echo "$2"

grep   $1  *|grep $subtime |grep $subampm | awk -F' ' '{print $4" "$5 }'

