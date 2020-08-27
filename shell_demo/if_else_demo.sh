#!/bin/bash
# root user1 other

if [ $USER  = root ] ; then
    echo "root"
elif [ $USER = magician ] ; then
    echo "magician"
else
    echo "other user"
fi
