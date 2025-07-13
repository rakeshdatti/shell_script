#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERror you have to be sudo user"
    exit 1
fi

ech "Installing MySQL server"
dnf install -y mysql-server
if [$? -eq 0 ]
then
    echo "mysql is installed sucessfully"
    exit 0
else
    echo "mysql is not installed "
    exit 1
fi 