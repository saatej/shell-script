#!/bin/bash

userid=$(id -u)

validate(){
    echo "exit status: $1"
    echo "what are you doing: $2"

}

if [ $userid -ne 0 ]

then

echo "please run this script with root access."

exit 1

else 

echo "you are super user."

fi

dnf install mysql -y

validate

if [ $? -ne 0 ]

then

echo "installation of mysql...failure"

exit 1

else

echo "installation of mysql..success"

fi

