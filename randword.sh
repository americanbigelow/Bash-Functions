#!/bin/bash

max=$( wc -l ~/amdict | awk '{print $1}' ) # determine the max number of lines in the dictionary. This should be included in any script using the randword() function.

randword()
{
   	local lnnum=$(( $RANDOM%$max )) # pick a random number that will correspond to a line/word in the dictionary.
   	echo "$( sed -n "$lnnum{p}" ~/amdict | awk -F"'" '{print $1}')" # return that line/word when the function is expanded.
}									# This function is meant to be called as the last one was.
									# IE: $(randword)
}

echo $(randword) # print out the random word (This is only needed for testing)
