#!/bin/bash

test=$(df -h | grep sda3 | awk '{print $5}' | cut -d "%" -f 1)

if [ "$test" -ge "90" ]
	then 
		echo "/ is full"
	else 	
		echo "/ is not full"
fi

