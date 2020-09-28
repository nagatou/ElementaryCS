#!/bin/sh
#                         Copyright (C) 2016 Naoyuki Nagatou

DIR=./Quiz1
Target=*.py
Prog=/opt/local/bin/python3

IDs=`find ${DIR} -maxdepth 1 -type d | sort`

for id in ${IDs}
do
  if [ -d $id ] ; then
    for other in `ls $id/${Target}`
    do
      echo $other; ${Prog} $other
      read -p "hit any key to the next program::"
      if [ $? -eq 0 ] ; then
        echo $id >> success
      else
        echo "does not run" $id >> failure
      fi
    done
  else
    echo "does not exist" $id >> failure
  fi
  read -p "hit any key to the next student::"
done

find ${DIR} -maxdepth 1 -type d > assignment_list
