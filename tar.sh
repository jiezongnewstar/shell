#!/bin/bash
# create by xibei

#打包 .sh 文件

for i in `find /Users/jiajie/Downloads/demo/wy/shell/shell -name "*.sh"`; do
	tar -czf xibei.tgz $i
done



