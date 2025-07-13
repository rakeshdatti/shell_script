#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERror you have to be sudo user"
fi

dnf install mysql-community-server -y
if [$? -eq 0 ]
then
    echo "mysql is installed sucessfully"
else
    echo "mysql is not isntalled "
fi 