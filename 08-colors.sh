#/bin/bash

USERID=$(id -u)


R="\e[31m"
G="\e[32m"
Y="\e[33m"

# function
Validate() {
    if [ $1 -ne 0 ]
    then 
        echo -e "$2..$R failed"
        exit 1
    else
        echo -e "$2..$G success"
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
    echo -e "MySQL is already $Y installed"
    exit 0
fi