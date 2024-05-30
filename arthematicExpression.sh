#!/bin/sh



#################################################################
#
# solving Math expression 
#
#################################################################
read math
output=$(echo "$math" | bc -l)
rounded_output=$(printf "%.3f" "$output")

echo "$rounded_output"
