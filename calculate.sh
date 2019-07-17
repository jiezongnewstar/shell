#!/bin/bash
#create by xibei

# $(())
A=$(( 1 + 2 ))
echo $A

echo "-----------------"
# $[]
B=$[ 3 + 4 ]
echo $B

# let
C=11
D=22
E=33
F=0
let C=C-1
echo "-----------------"
echo $C
let F=E-D
echo "-----------------"
echo $F

# expr
echo "-----------------"
echo `expr 1 + 100`
echo `expr 12 \* 12`