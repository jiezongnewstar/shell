#!/bin/bash
# create by xibei


#无参数
function xibei (){

	txt="xibei 执行来自函数"

	echo "----------------------------"
	echo "|                          |"
	echo "|                          |"
	echo "|    $txt    |"
	echo "|                          |"
	echo "|                          |"
	echo "----------------------------"
}

xibei

echo ""
echo ""
echo ""
#有参数内部传参
function xibei1(){

	echo "----------------------------"
	echo "|                          |"
	echo "|                          |"
	echo "|    $1   |"
	echo "|                          |"
	echo "|                          |"
	echo "----------------------------"

}

xibei1 "xibei 执行来自函数1"

echo ""
echo ""
echo ""
#有参数外部传参
function xibei2(){
	echo "----------------------------"
	echo "|                          |"
	echo "|                          |"
	echo "|    $1   |"
	echo "|                          |"
	echo "|                          |"
	echo "----------------------------"

}

xibei2 $1


echo ""
echo ""
echo ""
#有返回值函数

function xibei3(){
	read -p "请随便输入......" input
	echo ""
	echo ""
	echo ""
	echo "刚刚输入的是： $input"
}

xibei3








