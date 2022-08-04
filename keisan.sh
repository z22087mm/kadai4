#!/bin/bash

#kakunin.sh で数値に不備が無いか確認する


echo "■計算開始"

if [ $1 -gt $2 ]; then
   a=$1
   b=$2
else
   a=$2
   b=$1
fi

if [ $a -eq $b ]; then
   echo "最大公約数eq：" $a
else
   amari=$(($a % $b))
   while [ $amari != 0 ];
   do
     a=$b
     b=$amari
     if [ $amari != 0 ]; then
        amari=$(($a % $b))
     fi
   done
   echo "最大公約数keisan：" $b
fi

