#!/bin/bash

count=0
Port=`expr 5941 + $count`
telnet 127.0.0.1 $Port
while [ $? == 0 ]
do   
    count=`expr $count + 1` 
done 
echo "Setting offset value equal $count"

