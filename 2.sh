#!/bin/bash

file='quotes.txt'
while read line
do
#Reading each line.
#quotes= echo "$line" | grep -Po '(?<=(() )).*(?= ~)'
#auther= echo "$line" | grep -Po '(?<=(~ )).*(?= \n)'
author="$line"
author=${author##*~}
quotes="$line"
quotes=${quotes%% ~*}
echo "$author once said,\"${quotes}\""
done < $file | cat > spech.txt