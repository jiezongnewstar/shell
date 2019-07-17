#!/bin/bash
# create by xibei

#while 循环（算数逻辑）
i=0
while ((i < 10 ))
do
	echo $i
	i=`expr $i + 1`
done

echo "-----------------------"
#while 循环（命令模式）
i=0
while [[ $i -lt 30 ]]
do
		echo $i
		i=`expr $i + 1`
done
