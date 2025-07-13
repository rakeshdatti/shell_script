#/bin/bash

USERID=$(id -u)

# function
Validate() {
    if [ $1 -ne 0 ]
    then 
        echo -e "\e[31m$2..failed"
        exit 1
    else
        echo -e "\e[32m$2..success"
    fi
}
if [ $USERID -ne 0 ]
then 
    echo "Error: You must be a sudo user"
    exit 1
fi
dnf list installed mysql 
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    Validate $? "Installing mysql..."
else
    echo -e "\e[33mMySQL is already installed"
    exit 0
fi