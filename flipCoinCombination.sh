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
#usecase-3
declare  -A  coin;

coin[headhead]=0;
coin[tailtail]=0;
coin[headtail]=0;
count=0;

addtoDictionary(){
if [ $1 -eq 0 ]
then
coin[headhead]=`expr ${coin[headhead]} + 1`;
elif [ $1 -eq 1 ]
then
coin[tailtail]=`expr ${coin[tailtail]} + 1`;
else
coin[headtail]=`expr ${coin[headtail]} + 1`;
fi
}

while [ $count -le 25 ]
do
flip=$((RANDOM%3));
addtoDictionary $flip;
((++count))
done

perhead=`expr ${coin[headhead]} \* 100`;
perhead=`expr $perhead / 25`;
pertail=`expr ${coin[tailtail]} \* 100`;
pertail=`expr $pertail / 25`;
perheadtail=`expr ${coin[headtail]} \* 100`;
perheadtail=`expr $perheadtail / 25`;
echo "percentage of headhead is $perhead"
echo "percentage of tailtail is $pertail"
echo "percentage of headtail is $perheadtail"
