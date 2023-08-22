#!/bin/bash

DATE=$(date +%f-%H-%M-%S)
script_name=$0
LOGFILE=/tmp/$script_name-$DATE.log

USERID=$(id -u)

VALIDATE () {
if [ $1 -ne 0 ]
 then 
   echo "$2 is failure"
   exit 1
 else
   echo "$2 is success"
 fi
}
if [ $USERID -ne 0 ]
then  
  echo "please check root access"
  exit 1
fi

 yum install nginx -y &>>$LOGFILE
 
VALIDATE $? "INSTALLING NGINX"

yum install mysql -y &>>$LOGFILE

VALIDATE $? "INSTALLING MYSQL"
