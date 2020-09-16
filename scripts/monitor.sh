#!/bin/bash

echo "Script to monitor the 'Tomcat' services on test server, if any service or process is stopped accidentlly, we should get email notifications saying that service is stopped and also script should try to restart the particular service."


service="ser1 serv2 serv3 .. .. serv15"
for i in $service
do
	ps -ef | grep -$i
		if [ $? -ne 0 ];then
			echo "$i" >> stopped_list
		fi
done

if [ ! -s stopped_list ];then
	cat stopped_list | mailx -s "service stopped" bharathramacahandra91@gmail.com
sudo service $service restart
fi
rm stopped_list
