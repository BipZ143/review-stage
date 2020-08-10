#!/bin/bash -x
Num1=$(( RANDOM%900+100 ))
Num2=$(( RANDOM%900+100 ))
Num3=$(( RANDOM%900+100 ))
Num4=$(( RANDOM%900+100 ))
Num5=$(( RANDOM%900+100 ))
Num6=$(( RANDOM%900+100 ))
#echo ${arr[Num1,Num2,Num3,Num4,Num5,Num6]}
arr=($Num1 $Num2 $Num3 $Num4 $Num5 $Num6)
echo ${arr[@]}

	for ((j=0; j<6; j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
echo ${arr[@]}
