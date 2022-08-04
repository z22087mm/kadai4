#!/bin/bash

#値を格納
arg_A=$1
arg_B=$2

#フラグの初期化
A_flg=0
B_flg=0

if [[ "$arg_A" =~ ^[0-9]+$ ]]; then
   if [ $arg_A -eq 0 ]; then
     echo "１つ目の値にゼロは入力禁止"
     A_flg=1
   fi
else
  echo "１つ目の値に正の値を入力してください"
  A_flg=1 
fi

if [[ "$arg_B" =~ ^[0-9]+$ ]]; then
   if [ $arg_B -eq 0 ]; then
     echo "２つ目の値にゼロは入力禁止"
     B_flg=1
     exit
   fi
else
   echo "２つ目の値に正の値を入力してください"
   exit
fi

#エラーが無かったら、正常終了を出力
if [ $A_flg = 0 ] && [ $B_flg = 0 ]; then
   echo "事前チェック終了（OK）"
   bash keisan.sh $1 $2
fi

