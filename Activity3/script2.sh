#!/bin/sh
#
#
#
#
#
#
#
#

echo "Please enter 5 numbers:"

for ((i=1; i<=5; i++))
do
    read -p "Number $i: " user_input
    echo $user_input >> results_$(date +'%d%m%Y')
done

echo "Please enter the bonus number:"

read user_input
    echo $user_input >> results_$(date +'%d%m%Y')

    matching_count=$(grep -w -x -f "results_$(date +'%d%m%Y')" "numbers_$(date +'%d%m%Y')" | wc -l)

echo "Matching numbers: $matching_count"

rm "results_$(date +'%d%m%Y')"
