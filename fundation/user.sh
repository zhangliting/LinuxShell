#!/bin/bash

test=$(env | grep USER | cut -d "=" -f 2)

if [ "$test" == "root" ]
	then
		echo "current user is root!"
fi
