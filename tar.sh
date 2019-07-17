#!/bin/bash
# create by xibei

#打包 .sh 文件

path=`pwd`
for i in `find $path -name "*.sh"`; do
	tar -czf xibei.tgz $i
done



