#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 10 ]
then  
  echo "please check root access"
fi
