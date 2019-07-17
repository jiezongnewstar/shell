#!/bin/bash
# create by xibei 

#系统循环  数字  1 ~ 20
seq 1 20

echo "------------------------"
#for循环 输出 seq 执行结果
for i in `seq 20 30`
do
	echo " 数字  $i "
done

echo "-----------方法1-------------"
#for 循环累加
A=0
for i in `seq 1 10`; do
	A=` expr $A + $i `
done
echo $A

B=0
echo "-----------方法2-------------"
for (( i = 0; i < 100; i++ )); do
	B=`expr $B + $i `
done
echo $B