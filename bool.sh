#!/bin/bash
# create by xibei

a="xibei"
b="xb"

#是否相等
if [[ $a = $b ]]; then
	echo " a 和 b 相等"
else
	echo " a 和 b 不相等"
fi

echo "---------------------"
#长度是否为0
if [[ -z $a ]]; then
	echo " a的长度0 "
else
	echo " a的长度不为0 "
fi

echo "---------------------"
if [[ -n $a ]]; then
	echo " a的长度不为0 "
else
	echo " a的长度为0 "
fi

echo "---------------------"
#字符串长度是否为空

if [[ $a ]]; then
	echo "字符串不为空"
fi
