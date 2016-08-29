#########################################################################
# File Name: monitor_man.sh
# Author: zhangliting
# mail: 1109156011@qq.com
# Created Time: Fri 26 Aug 2016 08:14:27 PM CST
#########################################################################
#!/bin/bash
resettem=$(tput sgr0)
declare -A ssharray
i=0
numbers=""

for script_file in $(ls -I "monitor_man.sh" ./)
do	
	echo -e "\e[1;35m" "The Script:" ${i} "==>" ${resettem} ${script_file}
	ssharray[$i]=${script_file}
	numbers="${numbers} | ${i}"
	i=$((i+1))
done

while true
do	
	read -p "Please input a number [ ${numbers} ]:" execshell
	if [[ ! ${execshell} =~ ^[0-9]+ ]];then
		exit 0
	fi
	/bin/sh ./${ssharray[$execshell]}
done
