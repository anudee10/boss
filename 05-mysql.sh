#!/bin/bash

USERID=$(id -u)
VALIDATE () {
if [ $1 -ne 0 ]
 then 
   echo "installation is failure"
   exit 1
 else
   echo "installation is success"
 fi
}
if [ $USERID -ne 0 ]
then  
  echo "please check root access"
  exit 1
fi

 yum install nginx -y
 
VALIDATE $? "INSTALLING NGINX"

yum install mysql -y

VALIDATE $? "INSTALLING MYSQL"
