#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script/"
LOGS_FILE="/var/log/shell-script/$0.log" # $0 -> indicates script name 

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){

if [ $1 -ne 0 ]; then
    echo "$2.............Failure" | tee -a $LOGS_FILE
    exit 1
else 
    echo "$2.............Success" | tee -a $LOGS_FILE
fi

}

dnf install nginx -y &>> $LOGS_FILE # & is for both for normal output and error output >> append to file 
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"



