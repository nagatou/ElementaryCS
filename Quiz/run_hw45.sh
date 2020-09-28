#!/bin/sh
#                         Copyright (C) 2016 Naoyuki Nagatou

DIR=./HomeWork45
Target=*.py
Prog=/opt/local/bin/python3

IDs=`find ${DIR} -maxdepth 1 -type d | sort`

for id in ${IDs}
do
  if [ -d $id ] ; then
    encipher="dummy"
    decipher="dummy"
    attack="dummy"
#    if ! `ls $id/${Target} > /dev/null`
#    then
#      continue
#    fi
    for other in `ls $id/${Target}`
    do
      mark=`cat $other`;\
      if echo "$mark" | grep -sq "ango.py" ; then
        encipher=${other}
      fi
      if echo "$mark" | grep -sq "hukugo.py" ; then
        decipher=${other}
      fi
      if echo "$mark" | grep -sq "kaidoku.py" ; then
        attack=${other}
      fi
    done
    cat ./plaintext.txt | ${Prog} $encipher | ${Prog} $decipher
    codeA=$?
    echo $encipher $decipher
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
done

find ${DIR} -maxdepth 1 -type d | sort > assignment_list
