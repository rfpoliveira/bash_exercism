
# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

# The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

# second argument must be "square_of_sum", "sum_of_squares" or "diference" and display acordently

#!/usr/bin/env bash

main()
{
    sq_sum=0
    sum_sq=0
    value="$2"
    if [ "$1" == "square_of_sum" ]; then
        get_square_of_sum
        result=$sq_sum
    elif [ "$1" == "sum_of_squares" ]; then
        get_sum_of_squares
        result=$sum_sq
    else
        get_square_of_sum
        get_sum_of_squares
        result=$(($sq_sum - $sum_sq))
    fi
    echo $result
}

get_square_of_sum()
{
    for ((i=1; i<=$value;i++)); do
        sq_sum=$((sq_sum + i))
    done
    sq_sum=$((sq_sum ** 2))
}

get_sum_of_squares()
{
    for ((i=1; i<=$value;i++)); do
        sum_sq=$((sum_sq + (i ** 2)))
    done
}

main $@