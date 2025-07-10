#!/bin/bash
echo "please enter the name of person"
read  USERNAME
echo "username is added as $USERNAME"
#-s # to read password silently
echo "please enter the password"
read -s PASSWORD
echo "password is added as $PASSWORD"