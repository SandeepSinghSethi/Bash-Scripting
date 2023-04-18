#!/bin/bash

# ls /some/random/location 2> /dev/null
# echo $?

# HOST=$1
# ping -c 1 $HOST 1> /dev/null

# if [[ $? -eq 0 ]]; then
# 	echo "HOST=$HOST"
# 	echo "Command Successfull.."
# else
# 	echo "Command failed miserably.."
# fi

# checking with && and || operator

# ping -c 1 $HOST 1>/dev/null && echo "Command Executed Successfully"

# ping -c 1 $HOST 1>/dev/null || echo "Executing anyways"

# ping -c 1 $HOST 1>/dev/null 2>/dev/null
# RETURNCODE=$?

# if [[ $RETURNCODE -ne "0" ]];then
# 	echo "Command failed .."
# 	exit 69
# fi
# exit 0

# function hello()
# {
# 	echo "jfkasjkf"
# }

# hello1 ()
# {
# 	echo "abc"
# }

# hello
# hello1

# function run()
# {
# 	echo "The time is : $(date +%r)"	
# }

# function hello()
# {
# 	echo "hello"
# 	run
# }

# hello

# echo $@

# the usage of the local keyword

# function testfunc()
# {	
# 	local variable_local="waduhekk"
# 	# checking for the return code of the function
# 	ls /some/random/location 2>/dev/null
# 	return 0
# }
# variable_local="maduhekk"
# testfunc
# echo $?
# echo $variable_local

# testing some previous knowledge 
# function backup()
# {
# 	if [[ -f $1 ]];then
# 		local BACK="/tmp/$(basename $1).$(date +%T).$$"
# 		echo "[+] Backing up $1 to $BACK"
# 		cp $1 $BACK
# 	fi
# }

# # backup $1

# if [[ "$?" -eq "0" ]];then
# 	backup $1
# fi

# function myfunc()
# {
# 	local SECRET=0
# 	read -p "Enter the secret number: " SECRET

# 	if [[ $SECRET -eq 42 ]];then
# 		if [[ -f /tmp/win.txt ]];then
# 			echo 1>/dev/null			
# 		else
# 			echo "Youwin" > /tmp/win.txt
# 		fi
# 		cat /tmp/win.txt
# 		return 0
# 	else
# 		return 1
# 	fi
# }

# Num=0

# while [[ $Num -ne 10 ]]
# do
# 	myfunc
# 	if [[ $? -eq 0 ]];then
# 		break
# 	fi
# 	((Num++))
# done

# for i in $(ls); do
# 	echo $i
# done

# FIRST=$1
# echo $FIRST
# shift
# echo $@

# HOST=$1
# while ping -c 1 $HOST >/dev/null
# do
# 	echo "Server up !!!"
# 	sleep 3
# done

# echo "Server Down , exiting !!"
# exit 1 

# reading content line-by-line from a file
LINE_NUM=1

# while read LINE
# do
# 	echo "$LINE_NUM: $LINE"
# 	((LINE_NUM++))
# done < /etc/fstab

# set -x
# read -p "Enter num: " NUM

# while [[ "$NUM" -le "5" ]]
# do
# 	echo $NUM
# 	((NUM++))
# done
# set +x

# set -e
# ls /nonexistent/file
# set +e

# echo hellworld

# set -v
FILE="/etc/passwd"
echo $FILE
# set +v
