#!/bin/sh
#
#
#
#
#

array=()
while [ ${#array[@]} -lt 5 ]
do
	echo "Please provide a number:"
	read answer
        if ! [[ "$answer" =~ ^-?[0-9]+$ ]]; then
            echo "Invalid input. Please enter an integer."
            continue
        fi
array+=($answer)
done

while true
do
	echo "You've reached the minimum of numbers required. Do you want to keep adding numbers? (type Y or N)"
	read answer
	if [[ ${answer,,} == "n" && ${#array[@]}  -ge 5 ]]
	then
		break
	elif [ ${#array[@]} -eq 10 ]
	then
		echo "You've reached the maximum numbers allowed (10)"
		break
	else
		echo "Please provide a number:"
		read answer
		if ! [[ "$answer" =~ ^-?[0-9]+$ ]]
		then
			echo "Invalid input. Please enter an integer."
			continue
		fi
		
		array+=($answer)
	fi
done

echo "Numbers entered: " ${array[@]}

product=1
sum=0
min=${array[0]}
max=${array[0]}

for i in ${array[@]}
do
	product=$((product * i))
	sum=$((sum + i))
	min=$((i < min ? i : min))
	max=$((i > max ? i : max))
done

average=$(bc -l <<< "scale=2; $sum / ${#array[@]}")

echo "Product of the integers: $product"
echo "Average of the integers: $average"
echo "Sum of the integers: $sum"
echo "Min of the  integers: $min"
echo "Max of the integers: $max"
