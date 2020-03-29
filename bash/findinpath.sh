#!/bin/bash
################################################################################
#@(#) findinpath(1sh) - given list of commands return name of first one found or blank
################################################################################
for NAME in $* 
do
   if inpath.sh $NAME 
   then
      printf "$NAME"
      exit
   fi
done
################################################################################
exit 1
################################################################################