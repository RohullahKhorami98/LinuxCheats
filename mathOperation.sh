#!/bin/sh

read xx
read yy

X=$(echo "$xx" | awk '{print int($1)}')
Y=$(echo "$yy" | awk '{print int($1)}')

addxy=$(($X+$Y))
subxy=$(($X-$Y))
multixy=$(($X*$Y))

if [ $Y -ne 0 ]; then
   divxy=$(($X/$Y))
fi

echo "$addxy"
echo "$subxy"
echo "$multixy"

div=$(echo "$divxy" | awk '{print int($1)}') ## Changing string to int
echo "$div"