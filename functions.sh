#!/bin/bash

# If the value is getting repeated - we can use variables.
# If the code is getting repeated multiple times - we can create functions and we can call it whenever we need.

# FUNCTIONS/METHODS
# Functions are intended to do specific task, it takes input and does the job
# Function will be executed only when it is called.


# program-1
userid=$(id -u)
if [ $userid -ne 0 ]; then
 echo "You are running with normal access, use sudo access"
 exit 1
else
 echo "You are running with sudo access"
fi

dnf install nginx -y
check(){
if [ $? -eq 0 ]; then
 echo "$1 installation will be success"
else
 echo "$1 installation will be failure"
fi

}

check() $? "Nginx"
