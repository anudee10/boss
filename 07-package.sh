#!/bin/bash

PACKAGE=$@
VALIDATE () {
    if [ $PACKAGE -ne 0 ]
    then
       echo "$1 is installed"
    else
       echo "$1 not installed"
    fi   
}

yum install nginx -y

VALIDATE $? "already installed nginx"

yum install mysql -y

VALIDATE $? "already installed mysql"
