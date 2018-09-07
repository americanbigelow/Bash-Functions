#!/bin/bash

randnum()
{
	local rnvar=$(( $RANDOM%25 )) # pick a number up to 25  
	echo "$rnvar" # print out that number.
}


echo $(randnum)
