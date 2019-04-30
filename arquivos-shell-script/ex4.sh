#!/usr/bash
echo digite um numero 
read num
i=0
echo "Tabuada do $num"
while [ $i -le 10 ]; do
	val=$(($num*$i))
	echo "$num x $i = $val"
	i=$(($i+1))
done
