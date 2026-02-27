#!/bin/bash

# If the value is getting repeated - we can use variables.
# If the code is getting repeated multiple times - we can create functions and we can call it whenever we need.

# FUNCTIONS/METHODS
# Functions are intended to do specific task, it takes input and does the job
# Function will be executed only when it is called.


# program-1
userid=$(id -u)
exit_code=$?
checking(){
if [ $exit_code -ne 0 ]; then
 echo "No Sudo Access"
else
 echo "Sudo Access"
fi
}

dnf install nginx -y
checking $? "Nginx"