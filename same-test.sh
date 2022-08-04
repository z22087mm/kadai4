#!/bin/sh

tep=/tmp/$$
echo "input 2 argments" > $tmp-args
echo "input natural number" > $tmp-nat

ERROR_EXIT(){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#test start
#test1 : hikisu husoku
./same.sh 2 > $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"

