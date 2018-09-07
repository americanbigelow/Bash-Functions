#!/bin/bash

checkuser()
{
	while [ $UID -eq 0 ]
	do
		echo
		echo "**************************************************"
		echo "Please do not run this script as the root user"
		echo
		echo " Please use su to become a normal user or log"
		echo "   out entirely and log in as a normal user."
		echo
		echo "                     Thanks!"
		echo
		echo "**************************************************"
		echo 
		exit 0 
	done
	}

checkuser

echo "You're not running this as root. That's a good thing."
