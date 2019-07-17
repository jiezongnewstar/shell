#!/bin/bash
# create by xibei

#单一条件if语句

A=2
B=1

if [[ $A -lt $B ]]; then
	echo " 单一[[]] 中  A < B"
fi

echo "------------------------"


if (($A<$B)); then
	echo " 单一(()) 中  A < B"
fi

echo "------------------------"
#非单一条件if语句
if [[ $A -lt $B ]]; then
	echo " [[]] 中  A < B"
else
	echo " [[]] 中  A > B"
fi

echo "------------------------"


if (($A<$B)); then
	echo " (()) 中  A < B"
else
	echo " (()) 中  A > B"
fi

echo "------------------------"


#判断输入文件是否存在
path=`pwd`
in=xibei.txt
if [[ -f $path/$in ]]; then
	echo " $in 存在！"
else
	echo " $in 不存在！"
fi

echo "------------------------"


#判断目录是否存在
path=`pwd`
if [[ ! -d $path/xb ]]; then
	mkdir -p $path/xb
else
	echo "目录已经存在！"
	cat xibei.txt
fi




















