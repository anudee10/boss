#!/bin/bash

PACKAGE=$@
VALIDATE () {
    if [ $1 -ne 0 ]
    then
       echo "$2 is installed"
    else
       echo "$2 not installed"
    fi   
}

yum install nginx -y

VALIDATE $? "already installed nginx"

yum install mysql -y

VALIDATE $? "already installed mysql"
