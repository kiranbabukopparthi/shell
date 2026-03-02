#!/bin/bash

useid=$(id -u)
LOG_FOLDER="/var/log/shell-script"
mkdir -p $LOG_FOLDER
LOG_FILE="$LOG_FOLDER/$0.log"

ROOT(){
if [ $userid -ne 0 ]; then
 echo "Access Denied. Run with Root Access"
 exit 1
else
 echo "You are root user. Proceeding further"
fi
}

VALIDATE() {
if [ $1 -ne 0 ]; then
 echo "$2 is Failed" | tee -a $LOG_FILE
else 
 echo "$2 is success" | tee -a $LOG_FILE
fi
}

echo "Hi, kindly let me know which package/s you want to install"
read -a PACKAGE_NAMES
ROOT()

for package in ${PACKAGE_NAMES[@]}
do 
 dnf list istalled $package
 exit_code=$?
  if [ $exit_code -eq 0 ]; then
   echo ""$package is already installed. Skipping Now""
  else
   echo "$package is not installed, installing now"
   dnf install $package -y &>>LOG_FILE
   VALIDATE $? "$package installation"
  fi
done




 

