#!/bin/bash

randnum()
{
 	local rnvar=$(( $RANDOM%10 )) 	# Pick a number up to 10.
	echo "$rnvar"			# This is like a bash version of a return statement. 
}					# The value of $nvar will be the value of the function
					# when called as a substitution like this $(randnum).

echo $(randnum)
