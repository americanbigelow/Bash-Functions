#!/bin/bash

max=$( wc -l ~/amdict | awk '{print $1}' ) # determine the max number of lines in the dictionary. This should be included in any script using the randword() function.

randword()
{
local lnnum=$(( $RANDOM%$max )) # pick a random number that will correspond to a letter in the dictionary
echo "$( sed -n "$lnnum{p}" ~/amdict )" # print out that word
}

echo $(randword) # print out the random word (This is only needed for testing)
