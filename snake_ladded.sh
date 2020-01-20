#!/bin/bash -x

#UC-1
position=0;
winPosition=100;
noPlay=0;
ladder=1;
snake=2;
counter=0;
while [ $position -lt $winPosition ]
do
#UC-2
rollNumber=$(( RANDOM%6 + 1 ))

#UC-3 check for option
option=$(( RANDOM%3 ))
case $option in
     $ladder)
#UC-4
     if [ $(( position + rollNumber )) -le $winPosition ]
     then
     position=$(( position + rollNumber ));
     fi
     ;;
     $snake)
     position=$(( position - rollNumber ));
     if [ $position -lt 0 ]
     then
       position=0;
     fi
     ;;
     $noPlay)
     echo "no play"
     ;;
esac
     Report[((counter++))]=$position
done
