#!/bin/bash -x

#UC-1
position=0;
winPosition=100;
noPlay=0;
ladder=1;
snake=2;
counter=0;
player1Score=0
player2Score=0
player1Chance=0
player2Chance=1
whoseChance=$player1Chance;
while [ $player1Score -lt $winPosition -a $player2Score -lt $winPosition ]
do
#UC-2
rollNumber=$(( RANDOM%6 + 1 ))

#UC-3 check for option
option=$(( RANDOM%3 ))
case $option in
     $ladder)
#UC-4
     if [ $whoseChance -eq $player1Chance ]
     then
     position=$player1Score
     else
     position=$player2Score
     fi

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
    if [ $whoseChance -eq $player1Chance ]
    then
    player1Score=$position;
    whoseChance=$player2Chance;
    else
    player2Score=$position;
    whoseChance=$player1Chance;
    fi
    # Report[((counter++))]=$position
done

if [ $player1Score -eq $winPosition ]
then
   echo "player 1 win the match"
else
   echo "player 2 win the match"
fi
