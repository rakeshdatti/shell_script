#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERror you have to be sudo user"
    exit 1
fi

dnf list installed mysql
if [$? -ne 0 ]
then
    echo "Installing MySQL server"
    dnf install mysql -y
    if [$? -eq 0 ]
    then
        echo "mysql is installed sucessfully"
        exit 0
    else
        echo "mysql is not installed "
        exit 1
    fi 
else
    echo "mysql is already installed"
    exit 0
fi