#!/bin/bash
CF=`pwd`
LF=`pwd`
WF="/root/ls"
while true
do
	git pull
	if [ -e "$CF/cmd.sh" ]
	then 
		mv $CF/cmd.sh $WF/
		cd $WF/
		chmod 777 *.sh
		cmd.sh 2>&1 >$LF/cmd.log
		cd $LF/
		git commit -m `date`
		git push
	fi
	sleep 5

done



