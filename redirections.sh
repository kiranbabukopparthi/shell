#!/bin/bash

# we can store the log of the script using redirections concept.
# ls -l ---> This is success command. 

# so if we want to store this log then
# ls -l > output.txt
# Here > symbol is used for redirection 
# when the above command is executed, the success log will be stored in output.txt file

# By default, success will be stored.
# 1 --> success
# 2 --> Failure

# ls -l 1 > output.txt
# success log will be stored here

# ls -l 2 > output.txt
# Failure log will be stored here.

# But we never know what will be success and what will be failure in real time with end user input.
# so to store everything we use &

# ls -l & > output.txt
# Here if the command is correct, success log will be stored and if the command is wrong then failure log will be stored.
# cat output.txt

# But when we run another command here then override happens and only new command output will be stored.

# To avoid this, we use >>
# ls -l & >> output.txt
# cat output.txt

# Usually logs will be available in /var/log
# so we will create one new directory in this path and redirect all the shell script logs into that directory
# sudo mkdir -p /var/log/shell-script

# -p --> it will check the directory name and look if that directory is already available or not. 
# If available, it will leave it otherwise it will create new one.

# userid=$(id -u)
# LOG_FOLDER="/var/log/shell-script"
# mkdir -p $LOG_FOLDER
# LOG_FILE="LOG_FOLDER/$0.log"

# if [ $userid -ne 0 ]; then
#  echo "You should have sudo access to proceed further"
#  exit 1
# fi

# VALIDATE(){
#  if [ $1 -ne 0 ]; then
#   echo "$2 installation is Failed"
# else
#  echo "$2 installation is Success"
# fi
# }

# dnf install nginx -y &>>LOG_FILE
# VALIDATE $? "Nginx"



# userid=$(id -u)
# LOG_FOLDER="/var/log/shell-script"
# mkdir -p $LOG_FOLDER
# LOG_FILE="$LOG_FOLDER/$0.log"

# if [ $userid -ne 0 ]; then
#  echo "You should have sudo access to proceed further"
#  exit 1
# fi

# VALIDATE(){
#  if [ $1 -ne 0 ]; then
#   echo "$2 installation is Failed"
# else
#  echo "$2 installation is Success"
# fi
# }

# dnf install nginx -y &>>LOG_FILE
# VALIDATE $? "Nginx"


# TEE COMMAND
# tee command is linux is used to read from the standard input and writes the same content to both standard output(screen) and one or more files simultaneously
# Here we want to store the output log in the log file as well as we want the see it on the screen.

# if the log file is not available then tee command can create a file automatically but there is should be log folder available.
# If the folder is not available then we will get file not found error.


userid=$(id -u)
LOG_FOLDER="/var/log/shell-script"
mkdir -p $LOG_FOLDER
LOG_FILE="$LOG_FOLDER/$0.log"

if [ $userid -ne 0 ]; then
 echo "You should have sudo access to proceed further" | tee -a $LOG_FILE | &>>$LOG_FILE
 exit 1
fi

VALIDATE(){
 if [ $1 -ne 0 ]; then
  echo "$2 installation is Failed"| tee -a $LOG_FILE
else
 echo "$2 installation is Success"| tee -a $LOG_FILE
fi
}

dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "Nginx"

# Here when the first tee command encountered, it will check whether log folder is available or not.
# if it is available then it can create a log file automcatically (here $0 means current file name)
# so redirections.log file will be created automcatically by tee command



# USERID=$(id -u)
# LOG_FOLDER="/var/log/shell-script"
# mkdir -p $LOG_FOLDER
# LOG_FILE="/var/log/shell-script/$0.log"

# if [ $USERID -ne 0 ] ; then 
#    echo "Run with Root access" | tee -a $LOG_FILE
#    exit 1
# fi


# VALIDATE(){
#    if [ $1 -ne 0 ] ; then
#     echo "$2 is Failure"| tee -a $LOG_FILE
#    else
#      echo "$2 is success"| tee -a $LOG_FILE
#     fi
# }

# dnf install nginx -y &>> $LOG_FILE
# VALIDATE $? "Installing nginx"

# dnf install mysql -y &>> $LOG_FILE
# VALIDATE $? "Installing mysql"

# dnf install nodejs -y &>> $LOG_FILE
# VALIDATE $? "Installing nodejs"