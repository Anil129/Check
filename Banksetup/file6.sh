#!/bin/bash
echo -e "\033[7;2;33mStarting script setup\033[m"

cp /home/anil/Downloads/Banksetup/file2.txt /home/anil/Downloads/Banksetup/sure
cp /home/anil/Downloads/Banksetup/script /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh

gedit sure

`lsof | grep sure`

if [ $? == 1 ]; then

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value31='/opt/jdk1.8.0_161'
     if [ "$line1" != 'JAVA_HOME=' ]; then
	   sed -i -e "3 s#/opt/jdk1.8.0_161#${line1:-$default_value31}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value32='/appserver/acsapp/wildfly-11.0.0.Final'
     if [ "$line1" != 'JB_HOME=/appserver/acsapp/wildfly-11.0.0.Final' ]; then
	   sed -i -e "12 s#/appserver/acsapp/wildfly-11.0.0.Final#${line1:-$default_value20}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value33='axislt1-prqwf-n1'
     if [ "$line1" != 'JB_SERVER_NAME=' ]; then
	   sed -i -e "13 s#axislt1-prqwf-n1#${line1:-$default_value33}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value34='15'
     if [ "$line1" != 'Offset_value=15' ]; then
	   sed -i -e "17 s#15#${line1:-$default_value34}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

fi

