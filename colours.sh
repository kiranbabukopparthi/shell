#!/bin/bash

# COLOURS IN LINUX
# syntax to get colours
# '\e[31m'

# Red --> 31
# Green --> 32
# Yellow --> 33
# Blue --> 34
# etc..

# -e is used to enable the colours

# Ex. echo -e "\e[31m Hello World"
# Here output will be printed in Red colour

# Default colour is 0 --> \e[0m

# echo -e "\e[31m Hello World. \e[0m I am learning DevOps"
# Here Hello World is in Red and I am learning DevOps will be in default colour


# userid=$(id -u)
# LOG_FOLDER="/var/log/shell-script"
# mkdir -p $LOG_FOLDER
# LOG_FILE="$LOG_FOLDER/$0.log"
# R="\e[31m]"
# G="\e[32m]"
# Y="\e[33m]"
# B="\e[34m]"
# N="\e[0m]"

# ROOT(){
# if [ $userid -eq 0 ]; then
#  echo -e "$B You are root user. Proceeding further $N"
# else
#  echo -e "$R Access Denied. Run with Root Access $N"
#  exit 1
# fi
# }

# VALIDATE() {
# if [ $1 -ne 0 ]; then
#  echo -e "$2 $R is Failed $N" | tee -a $LOG_FILE
# else 
#  echo -e "$B $2 is success $N" | tee -a $LOG_FILE
# fi
# }

# ROOT

# echo "Hi, kindly let me know which package/s you want to install"
# read -a PACKAGE_NAMES

# for package in ${PACKAGE_NAMES[@]}
# do 
#  dnf list installed $package &>>$LOG_FILE
#  exit_code=$?
#   if [ $exit_code -eq 0 ]; then
#    echo -e " $B $package is already installed.$N ... $Y Skipping $N Now"| tee -a $LOG_FILE
#   else
#    echo -e "$package is not installed, installing now"| tee -a $LOG_FILE
#    dnf install $package -y &>>$LOG_FILE
#    VALIDATE $? "$package installation"
#   fi
# done