#!/bin/bash

#echo Welcome to power-mgmt!

helpFunction()
{
   figlet power-mgmt -l -f slant
   echo ""
   echo "Usage: power-mgmt --action [PERFORMABLE ACTION] [--force level] -c parameterC"
   echo -e "\t--action - Describes what action to perform."
   echo -e "\t--force [level] - Force the action to happen using the specified severity level."
  # echo -e "\t-c Description of what is parameterC"
   echo "" 
   echo "Performable Actions:"
   echo -e "\t s, shutdown - Shutdown the system gracefully"
   echo -e "\t r, restart - Reboot the system gracefully"
   #echo -e ""
   echo ""
   echo "Force Levels:"
   echo -e "\t 0 - (default) The system will notify all users and services that the system is shutting down."
   echo -e "\t 1 - The system will shutdown without notifying users and shutting down services. Everything is killed and disks are unmounted before the system is shutdown."
   echo -e "\t 2 - systemctl will manage the shutdown without notifying systemd."
exit 1 # Exit script after printing help
}
confirmShutdown()
{
   #
   

   echo "The system is shutting down NOW"
}

confirmForcedShutdow()
{
   echo "The system is shutting down forcefully NOW"
}

case $1 in
	"--action")
		firstParmIsAction=true
		actionCalled=true
	;;
	"*")
		echo "A required parameter was missing."
   		echo "Please see the -h command."
   		exit 1
   	;;



if [ actionCalled == true ]
then
   echo "A required parameter was missing."
   echo "Please see the -h command."
   exit 1
fi

# Begin script in case all parameters are correct
echo "$parameterA"
echo "$parameterB"
echo "$parameterC"
echo "$2"
