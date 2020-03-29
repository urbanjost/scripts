#!/bin/bash
################################################################################
#@(#)inpath.sh(1sh) - true if command is in path
#(John S. Urban)
################################################################################
EXIT=1        # exit code to be returned by command
NAME="$1"
################################################################################
   case "$NAME" in
################################################################################
   */*) # If / in name, assume full pathname
   if [ -x "$NAME" ]
   then
      #echo "FOUND : $NAME" 1>&2
      EXIT=0
   else
      EXIT=2
   fi
   ;;
################################################################################
   *) # search path for command name
   #if [ -x "$(which $NAME 2>/dev/null)" ]

   if hash "$NAME" 2>/dev/null
   then
      #echo "FOUND : $NAME" 1>&2
      EXIT=0
   else
      EXIT=3
   fi
   ;;
################################################################################
   esac
################################################################################
exit $EXIT
################################################################################