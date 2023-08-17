#!/bin/bash

PACKAGE=$@
VALIDATE () {
    if [ $1 -ne 0 ]
    then
       echo "$2 is installed"
    
    fi   
}

yum install nginx -y

VALIDATE $? "already installed nginx"

yum install mysql -y

VALIDATE $? "already installed mysql"
