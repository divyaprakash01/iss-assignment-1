#!/bin/bash
echo $1 | rev

echo "enter 1 string for b and c part"
echo
read str
length=${#str}
for((i=0;i<length;i++))
do
arr[i]=${str:length-1-i:1}
done
echo
rev_string=$(echo "$str" | awk '{ for(i = length; i!=0; i--)x = x substr($0, i, 1);}END{print x}' | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo $rev_string


length=${#str}
let lenght=length/2

for((i=lenght;i<2*length;i++))
do
echo -n ${arr[i]}
done
for((i=length/2-1;i>=0;i--))
do
echo -n ${arr[i]}
done
echo