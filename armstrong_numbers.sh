
# An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.

# For example:

#     9 is an Armstrong number, because 9 = 9^1 = 9
#     10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1
#     153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
#     154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190

# Write some code to determine whether a number is an Armstrong number.

#!/usr/bin/env bash

number=$1

lenght=${#number}

result=0
i=0
while [ "$i" -lt "$lenght" ]; do
    ((result+= (${number:i:1} ** lenght)))
    ((i++))
done

if [ "$result" -eq "$number" ]; then
    echo true
else
    echo false
fi