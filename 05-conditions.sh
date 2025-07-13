#!/bin/bash

Number=5
if [ $Number -eq 5 ]
then
    echo "Number is equal to 5"
else
    echo "Number is not equal to 5"
fi


Number=-10
if [ $Number -eq  100 ]
then 
    echo "number is  equal to 100"
else 
    if [ $Number -gt 100 ] 
    then 
        echo "number is greater than 100"
    else 
        echo "number is less than 100"
    fi
fi

echo "plase enter the name of person"
read USERNAME
if [ -z "$USERNAME" ]
then
    echo "Username cannot be empty"
else
    echo "Username is added as $USERNAME"
fi