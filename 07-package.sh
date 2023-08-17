#!/bin/bash

PACKAGE=$@
VALIDATE () {
    if [ $PACKAGE -e 0 ]
    then
       echo "$PACKAGE is installed"
    else
       echo "$PACKAGE not installed"
    fi   
}

yum install nginx -y

VALIDATE $? "already installed"

yum install mysql -y

VALIDATE $? "already installed"
