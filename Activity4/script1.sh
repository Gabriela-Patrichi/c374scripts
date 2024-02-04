#!/bin/sh
#
#
#Write a script to validate how secure someone's password is. Things you would care about: 
#  Length should be 8 or more characters 
#  The password should contain numbers and letters 
#  There should be both uppercase and lowercase letters 
#
#
#
#


while true
do
  echo "Please input password using at least 8 characters, including uppercase, lowercase, and a number:"
  read user_input

  if [ ${#user_input} -lt 8 ]
  then
	  echo "Password must have at least 8 characters."
  elif [ ${user_input} == ${user_input,,} ]
  then

	  echo "Password must contain at least one uppercase character."
  elif [ ${user_input} == ${user_input^^} ]
  then
	  echo "Password must contain at least one lowercase character."
  elif [[ ! ${user_input} =~ [0-9] ]]
  then
	  echo "Password must contain at least one number."
  else
	  echo "Great, you've chosen a password as per the security requirements!"
 break
  fi
done




