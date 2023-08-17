#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then  
  echo "please check root access"
  exit 1
fi

 yum install nginx -y
 
 if [ $? -ne 0 ]
 then 
   echo "installation is failure"
   exit 1
 else
   echo "installation is success" 

