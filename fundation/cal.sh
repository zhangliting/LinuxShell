#!/bin/bash


read -t 30 -p "Please input num1: " num1
read -t 30 -p "Please input num2: " num2
read -t 30 -p "Please input a operator: " ope

if [ -z "$num1" -o -z "$num2" -o -z "$ope" ]
	then
		exit -1
fi

test1=$(echo $num1 | sed 's/[0-9]//g')
test2=$(echo $num2 | sed 's/[0-9]//g')

if [ -n "$test1" -o -n "$test2" ]
	then
		exit -2


fi

sum=$(expr "$num1" + "$num2")	

echo $sum
