#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "You should enter 3 arguments. First one for date in MMDD format and Second one for time in hh:mm:ss am/pm format and third one for the Game Played - BlackJack or Roulette or exas "
    exit
fi
str="$2"
subtime=${str:0:8}
subampm=${str:9:2}

strgamename="$3"

#echo $subtime
#echo $subampm

#echo $str
#echo "$1"
#echo "$2"
#echo "$3"
#cho $strgamename 

case $strgamename in
BlackJack)
grep   $1  *|grep $subtime |grep $subampm | awk -F' ' '{print $3" "$4 }'
;;
Roulette)
grep   $1  *|grep $subtime |grep $subampm | awk -F' ' '{print $5" "$6 }'
;;
exas)
grep   $1  *|grep $subtime |grep $subampm | awk -F' ' '{print $7" "$8 }'
;;
esac
