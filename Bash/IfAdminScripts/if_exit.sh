#!/bin/bash
# Basic if statement

# if [ <test> ]
# then
#   <run_this_command>
#   <run_this_command>
#   <run_this_command>
# fi

# if [ <test> ]
# then
#   <run_this_command>
# else
#   <run_this_command>
# fi

# if [ <test> ] && [ <test> ]
# then
#   <run_this_command>
# else  
#   <run_this_command>
# fi

# if [ <test> ] || [ <test> ]
# then
#   <run_this_command>
#   <run_this_command>
#   <run_this_command>
# fi

# number variables
x=5
y=100

# string variables
str1='this is a string'
str2='this is different string'

# If $x is equal to $y, run the echo command.
if [ $x = $y ]
then 
  echo "X is equal to Y!"
fi

# If x is not equal to y, exit the script
if [ $x != $y ]
then 
  echo "$x does not equal $y"
fi

# If str1 is not equal to str2, run the echo command and exit the script.
if [ $str1 != $str2 ]
then 
  echo "These strings do not match."
  echo "Exiting this script."
  exit
fi

# If x is greater than y, run the echo command
if [ $x -gt $y ]
then
  echo "$x is greater than $y".
fi

# check if x is less than y
if [ $x -lt $y ]
then 
  echo "$x is less than $y!"
else
  echo "$x is not less than $y!"
fi

# check if $str1 is equal to 'this string' AND $x is greater than $y
if [ $str1 = 'this string' ] && [ $x -gt $y ]
then
  echo "Those strings match and $x is greater than $y!"
else
  echo "Either those strings don't match, or $x is not greater than $y"
fi

# check if $str1 is equal to str2 OR $x is less than $y
if [ $str1 != $str2 ] || [ $x -lt $y ]
then
  echo "Either those strings don't match OR $x is less than $y!"
else
  echo "Those strings match, AND $x is not less than $y"
fi

# check for the /etc directory
if [ -d /etc ]
then
  echo "The /etc directory exists!"
fi

# check for my_cool_folder
if [ ! -d /my_cool_folder ]
then 
  echo "my_cool_folder isn\'t there!"
fi

# check for my_file.txt
if [ -f /my_file.txt ]
then
  echo "my_file.txt is there"
fi

# if the user that ran this script is not the sysadmin user, run the echo command
if [ $USER != 'sysadmin' ]
then 
  echo "you are not the sysadmin!"
  exit
fi

# if the uid of the user that ran this script does not equal 1000, run the echo command
if [ $UID -ne 1000 ]
then
  echo "your UID is wrong"
  exit
fi

# if the sysadmin ran the script, run the echo command
if [ $(whoami) = 'sysadmin' ]
then
  echo 'you are the sysadmin!'
fi
