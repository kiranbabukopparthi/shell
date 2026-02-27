#!/bin/bash

# IF is the conditional statement to execute the code.
# To run the script bases on specific condition, we use if statememt

# program-1
# condition="true"
# if [ condition==true ] ; then
#  echo "if condition executed"
# else
#  echo "else condition is executed"
#  fi

# program-2
userid=$(id -u)
if [ userid -nq 0 ]; then
 echo "Run with sudo access"
else
 echo "You are running with sudo access"
fi

dnf install nginx -y
