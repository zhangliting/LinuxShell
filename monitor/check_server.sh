#########################################################################
# File Name: check_server.sh
# Author: zhangliting
# mail: 1109156011@qq.com
# Created Time: Fri 26 Aug 2016 08:25:53 PM CST
#########################################################################
#!/bin/bash
Resettem=$(tput sgr0)
Nginxserver='http://192.168.92.133/nginx_status'
Check_Nginx_Server()
{
	Status_code=$(curl -m 5 -s -w %{http_code} $(Nginxserver) -o /dev/null)

	if [ $Status_code -eq 000 -o $Status_code -ge 500 ];then
		echo -e '\E[32m' "check http server error! Respose status code is" $Resettem $Status_code
	else
		Http_content=$(curl -s ${Nginxserver})
		echo -e '\E[32m' "check http server ok! Respose status code is" $Resettem $Http_content
	fi
}

Mysql_Slave_Server="192.168.92.133"
Check_Mysql_Server()
{
	nc -w2  ${Mysql_Slave_Server} 3306 $>/dev/null
	if [ $? -eq 0 ];then
		echo "Connect ${Mysql_Slave_Server} OK!"
	fi
}
Check_Nginx_Server
Check_Mysql_Server
