#!/bin/sh
#                         Copyright (C) 2016 Naoyuki Nagatou

DIR=./QUIZ3
Target=*.py
Prog=/Library/Frameworks/Python.framework/Versions/3.8/bin/python3

IDs=`find ${DIR} -maxdepth 1 -type d | sort`

for id in ${IDs}
do
  if [ -d $id ] ; then
    encipher="../progs/ango.py"
    decipher="dummy"
    attack="dummy"
    for other in `ls $id/${Target}`
    do
      mark=`cat $other`;\
      if echo "$mark" | grep -sq "kaidoku.py" ; then
        attack=${other}
      fi
    done
    cat ./plaintext.txt | ${Prog} $encipher | ${Prog} $attack
    codeA=$?
    echo $encipher $attack
    echo $id
    read ignore
    if [ ${codeA} -eq 0 ] ; then
      echo $id $encipher $decipher $attack >> success
    else
      echo "does not run" $id $encipher $decipher $attack >> failure
    fi
  else
    echo "does not exist" $id >> failure
  fi
  read -p "hit any key to the next student::"
done

find ${DIR} -maxdepth 1 -type d > assignment_list
