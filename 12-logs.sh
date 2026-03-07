#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script/"
LOGS_FILE="/var/log/shell-script/$0.log" # $0 -> indicates script name 

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user access" 
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){

if [ $1 -ne 0 ]; then
    echo "$2.............Failure"
    exit 1
else 
    echo "$2.............Success"
fi

}

dnf install nginx -y &>> $LOGS_FILE # & is for both for success and failure  >> append  
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"



