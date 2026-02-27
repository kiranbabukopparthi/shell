#!/bin/bash

# program-1
# echo "kiran : How are you janu"
# echo "Janu : I am fine. Thanks for asking kiran"

# we can write names here directly but we want to change the names we need to do it manually. 
# when the lines of code increases the burden increases to do the changes manually
# so here we can use the variables concept here.

# variables are containers which store store values. These values can be anything like number, string, float, expression, path, etc..
# we can access the variables using $ symbol.

# program-2
# person1=kiran
# person2=janu

# echo "$person1 : How are you $person2"
# echo "$person2 : I am fine. Thanks for asking $person1"

# Here we can change the names in the variables and can rerun the program. But still changing the names manually at everytime will be an issue.
# so to give our required names while running the program. we need to use new concept called special variables or we can use read function.
# read function will be learned later. Now we will use special varibles

# program-3
# person1="$1"
# person2="$2"

# echo "$person1 : How are you $person2"
# echo "$person2 : I am fine. Thanks for asking $person1"

# Here $1 indicates first variable and $2 incdicates second varibale (which are given at run time) - and so on
# we have more special variables like these mentioned below

# we can access the data or can take the input from end user at run time usinh read function. 
# read function is used to read the data/inputb given by user and we can store that data using variables

# program-4
# echo "Please enter person1 name : "
# read person1
# echo "Please enter person2 name : "
# read person2

# echo "$person1: How are you $person2"
# echo "$person2: I am fine. Thanks for asking $person1"

# when user enters the name, it will be read by read function and store it in the person1 variable. 
# later it can be printed whenever we need. This is how we read dynamic data using special variables or read function

# To hide the input while end user is writing/giving dynamically. Best example is username and password.
# username can be exposed but password should be hidden while entering. In this case -s is used along with read

# program-5
echo "Please enter your username : "
read username
echo "Please enter ypur password : "
read -s password

echo "Your username is $username"
echo "Your password is hidden while you are typing. The password is : $password"