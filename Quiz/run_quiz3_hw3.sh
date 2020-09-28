#!/bin/sh
#                         Copyright (C) 2016 Naoyuki Nagatou

DIR=./Quiz3
Target=*.rb
Prog=/usr/bin/ruby

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
      if echo "$mark" | grep -sq "ango.rb" ; then
        encipher=${other}
      fi
      if echo "$mark" | grep -sq "hukugo.rb" ; then
        decipher=${other}
      fi
      if echo "$mark" | grep -sq "kaidoku.rb" ; then
        attack=${other}
      fi
    done
    cat ./plaintext.txt | ${Prog} $encipher | ${Prog} $decipher
    codeA=$?
    cat ./plaintext.txt | ${Prog} $encipher | ${Prog} $attack
    codeB=$?
    echo $encipher $decipher $attack
    echo $id
    read ignore
    if [ ${codeA} -eq 0 -a ${codeB} -eq 0 ] ; then
      echo $id $encipher $decipher $attack >> success
    else
      echo "does not run" $id $encipher $decipher $attack >> failure
    fi
  else
    echo "does not exist" $id >> failure
  fi
done

find ${DIR} -maxdepth 1 -type d > assignment_list
