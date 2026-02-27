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


# -gt --> greater than
# -lt --> lower than
# -eq --> equal to
# -ne --> not equal to


# program-2
userid=$(id -u)
if [ $userid -ne 0 ]; then
 echo "Run with sudo access"
 exit 1
else
 echo "You are running with sudo access"
fi

dnf install nginx -y
