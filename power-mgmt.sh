#!/bin/bash

#  ____________
# / power-mgmt \
# \ 01.02.2022 /
#  ------------
#         \   ^__^
#          \  (xx)\_______
#             (__)\       )\/\
#              U  ||----w |
#                 ||     ||

# power-mgmt requires figlet and 

#echo Welcome to power-mgmt!


helpFunction()
{
	figlet power-mgmt -l -f slant
	echo ""
	echo "Usage: power-mgmt --action [PERFORMABLE ACTION] [--force level]"
	echo -e "\t--action - Describes what action to perform."
	echo -e "\t--force [level] - Force the action to happen using the specified severity level."
    #echo -e "\t-c Description of what is parameterC"
    echo -e "\t--helo or -h - Shows this text."
    echo "" 
    echo "Performable Actions:"
    echo -e "\t s, shutdown - Shutdown the system gracefully"
    echo -e "\t r, restart - Reboot the system gracefully"
    echo -e "\t p, poweroff - Shuts down the system using force level 1."
    #echo -e "
    echo ""
	echo "Force Levels:"
    echo -e "\t 0 - (default) The system will notify all users and services that the system is shutting down."
    echo -e "\t 1 - The system will shutdown without notifying users and shutting down services. Everything is killed and disks are unmounted before the system is shutdown."
    echo -e "\t 2 - systemctl will manage the shutdown without notifying systemd."
    echo ""
    echo "Please note that most commands require power-mgmt to be run as root for it to function properly."
	exit 1 # Exit script after printing help
}
shutdown()
{
   dialog --file "dialogs/confirmShutdown"
   

   echo "The system is shutting down NOW"
}

forceShutdown()
{
	dialog --file "dialogs/notRoot"
    echo "The system is shutting down forcefully NOW"
}
notRoot()
{
	dialog --file "dialogs/notRoot"
}

case $1 in
	"--action")
		firstParmIsAction="true" && actionCalled="true"
	;;
	"")
		echo "A required parameter was missing."
   		echo "Please see the -h command."
   		exit 3
   	;;
   	"-h") helpFunction;;
	"--help") helpFunction;;
   	*)
		echo "A unexpected option was passed into power-mgmt."
		echo "Please check your command and try again."
		exit 2
	;;	
esac
case $2 in
	"s") shutdown;;
	"shutdown") shutdown;;
	"p") forceShutdown;;
	"poweroff") forceShutdown;;
	"halt") shutdown;;
   	"-h") helpFunction;;
	"--help") helpFunction;;
   	*)
		echo "A required parameter was missing."
   		echo "Please see the -h command."
   		exit 3
	;;	
esac
if [ $? != "0" ]; then
	echo "$?"
fi

if [[ $actionCalled == "true" ]]; then
    echo "A required parameter was missing."
    echo "Please see the -h command."
    exit 1
fi

# Begin script in case all parameters are correct
echo "$2"
