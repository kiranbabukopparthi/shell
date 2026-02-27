#!/bin/bash

# In shell scripting, datatypes don't have any major importance.
# Major dataypes used are string and number
# By default, everything is string in shell scripting
# so we don't need to specify the datatype while declaring variables

# Array is a variable which can store multiple values or list of items.
# it can be declared directly similar to normal varibale.
# But will accessing we use {[index value or all]}

# program-1
echo "enter any there fruit names"
{FRUIT}=$(read fruit1 fruit2 fruit3)
echo "Fruits are ${FRUIT[@]}"
