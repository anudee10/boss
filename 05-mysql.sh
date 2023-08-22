#!/bin/bash

DATE=$(date +%f-%H-%M-%S)
script_name=$0
LOGFILE=/tmp/$script_name-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

USERID=$(id -u)

VALIDATE () {
if [ $1 -ne 0 ]
 then 
   echo -e  $R"$2 is  failure $N"
   exit 1
 else
   echo -e $G"$2 is  success $N"
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
