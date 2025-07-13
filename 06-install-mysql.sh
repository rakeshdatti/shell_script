#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERror you have to be sudo user"
    exit 1
fi

yum install mysql-server -y
if [$? -eq 0 ]
then
    echo "mysql is installed sucessfully"
    exit 1
else
    echo "mysql is not installed "
fi 