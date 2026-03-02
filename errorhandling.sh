#!/bin/bash

# set command
# set -e
# To validate the errors we can use set command
# set command will check errors and if error is there then it will exit and it will give the line number details of that error.

# trap command
# trap command in linux is a shell built in that defines and activates handlers to execute command when the shell receives a specific signal or condition.

# set modifies shell behavior and error handling, 
# while trap catches signals and runs commands when specific events occur.

# set -e
# echo "This is set command and below will get error"
# echoo "This command is not printed and script will exit here"

trap "echo Script finished" EXIT
echo "Running script..."

