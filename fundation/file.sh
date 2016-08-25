#!/bin/bash

read -t 30 -p "Please input a dir: " dir

if [ -d "$dir" ]
	then 	
		echo "$dir is a diractory"
	else 
		echo "not a diractory"
fi
