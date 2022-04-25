#!/bin/bash
read file

#q3.a
FILENAME=$1
FILESIZE=$(stat -c%s "$FILENAME") # (a)size of file
echo $FILESIZE


#q3.b
LineCount=$(wc --lines "$FILENAME") #(b)toatal lines
echo $LineCount

#q3c
WordCount=$(wc -w "$FILENAME")  #(c) total words in a file
echo $WordCount


#q3d
awk '{print"Line No:",((1+i++)),"-",NF}' $file  


#q3e
cat $file | tr '[:punct:]' ' ' | tr -s ' ' | tr ' ' '\n' | sort | uniq -c | sort -rn | awk '{print "Word: <"$2">-Count of repetation:["$1"] "}' | grep -v "Word: <>"