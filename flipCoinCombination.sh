#!/bin/bash/
echo "flip Coin Combination"
#usecase-1
isHead=1
randomCheck=$((RANDOM%2))
if [ $isHead -eq $randomCheck ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi
#usecase-2
declare  -A  coin;

coin[head]=0;
coin[tail]=0;
count=0;

addtoDictionary(){
if [ $1 -eq 0 ]
then
coin[head]=`expr ${coin[head]} + 1`;
else
coin[tail]=`expr ${coin[tail]} + 1`;
fi
}

while [ $count -le 25 ]
do
flip=$((RANDOM%2));
addtoDictionary $flip;
((++count))
done

perhead=`expr ${coin[head]} \* 100`;
perhead=`expr $perhead / 25`;
pertail=`expr 100 - $perhead`;
echo "percentage of heads is $perhead"
echo "percentage of tails is $pertail"
