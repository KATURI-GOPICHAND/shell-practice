#!/bin/bash

USERID=$(id -u) # u -> print only effective userID

if ( $USERID -ne 0 ); then
echo "please run the script with root user access"
exit 1
fi
echo "Installing Nginx"
dnf install nginx -y
if ( $? -ne 0 )
echo "Installing Nginx.............Failure"
exit 1
else 
echo "Installing Nginx.............Success"