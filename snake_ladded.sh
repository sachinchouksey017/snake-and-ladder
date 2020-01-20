#!/bin/bash -x

#UC-1
postion=0;

#UC-2
rollNumber=$(( RANDOM%6 + 1 ))

#UC-3 check for option
noPlay=0;
ladder=1;
snake=2;
option=$(( RANDOM%3 ))
case $option in
     $ladder)
     echo "lader is came"
     ;;
     $snake)
     echo "snake is came"
     ;;
     $noPlay)
     echo "no play"
     ;;
esac
