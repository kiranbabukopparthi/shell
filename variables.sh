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
person1="$1"
person2="$2"

echo "$person1 : How are you $person2"
echo "$person2 : I am fine. Thanks for asking $person1"