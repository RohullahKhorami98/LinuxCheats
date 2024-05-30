#!/bin/sh



#################################################################
#
# solving Math expression 
#
#################################################################

getNinputs(){
    read N

    nn=$(echo "$N" | awk '{print int($1)}')

    result=0

    for ((i = 0; i <nn; i++)); do
        read temp
        temp1=$(echo "$temp" | awk '{print int($1)}')
        result=$((result + temp1))
    done


    final=$(echo "scale=3; $result / $nn" | bc -l)
    formatedOutput=$(printf "%.3f" "$final")
    echo "$formatedOutput"
}
expression(){
    read math
    output=$(echo "$math" | bc -l)
    rounded_output=$(printf "%.3f" "$output")

    echo "$rounded_output"
}


