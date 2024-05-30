#!/bin/sh



#################################################################
#
# solving Math expression 
#
#################################################################

getNinputs(){

    read N

    if [ "$N" -ge 1 ] && [ "$N" -le 500 ]; then
        result=0

        for ((i = 0; i < N; i++)); do
            read temp
            result=$(echo "scale=3; $result + $temp" | bc -l)
        done

        final=$(echo "scale=3; $result / $N" | bc -l)
        printf "%.3f\n" "$final"
    fi

}
expression(){
    read math
    output=$(echo "$math" | bc -l)
    rounded_output=$(printf "%.3f" "$output")

    echo "$rounded_output"
}


