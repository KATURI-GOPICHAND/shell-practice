#!/bin/bash

USERID=$(id -u) # u -> print only effective userID

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user access"
    exit 1
fi

# By deafult shell not execute,only execute when it is called
VALIDATE(){

if [ $1 -ne 0 ]; then
    echo "$2.............Failure"
    exit 1
else 
    echo "$2.............Success"
fi

}

dnf install nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"


