#!/bin/sh
#
#
#Create a 10-question true or false quiz game in your script. Choose a topic of your liking for the questions!
#questions are store in questions file
#
#
#
#
score=0
while read line
do
        question=`echo $line | awk -F ';' '{print$1}'`
	answer=`echo $line | awk -F ';' '{print$2}'`
	echo $question
	read user_input < /dev/tty
	if [ ${user_input,,} == ${answer} ]
	then
                ((score++))
		echo "Correct!"
	else
		echo "Incorrect answer."
	fi
done < questions

echo "You have a total of $score correct answers. Thanks for playing!"
