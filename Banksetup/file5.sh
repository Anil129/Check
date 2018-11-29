#!/bin/bash
echo -e "\033[7;2;33mStarting Standalone setup wizard\033[m"
cp /home/anil/Downloads/Banksetup/stand.xml /home/anil/Downloads/Banksetup/standalone.xml
cp /home/anil/Downloads/Banksetup/file1.txt /home/anil/Downloads/Banksetup/sure

gedit sure

`lsof | grep sure`

if [ $? == 1 ]; then

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value19='/appserver/acsapp'
     if [ "$line1" != 'ACCOSA_APP_ROOT' ]; then
	   sed -i -e "35 s#/appserver/acsapp#${line1:-$default_value19}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value20='https://acs.gmail.com'
     if [ "$line1" != 'UM_PROXY_URL' ]; then
	   sed -i -e "55 s#acs.gmail.com#${line1:-$default_value20}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value21='/appserver/acsapp/'
     if [ "$line1" != 'LINUX_ROOT_DIR' ]; then
	   sed -i -e "60 s#/appserver/acsapp#${line1:-$default_value21}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value22='192.168.105.15'
     if [ "$line1" != 'com.enstage.hsm.HSMInterface.forceIPAndPort' ]; then
	   sed -i -e "63 s#192.168.105.15#${line1:-$default_value22}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value23='ConnectionPool'
     if [ "$line1" != 'ConnectionPool' ]; then
	   sed -i -e "204 s#ConnectionPool#${line1:-$default_value23}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value24="ACSConnectionPool"
     if [ "$line1" != 'ACSConnectionPool' ]; then
	   sed -i -e "709 s#ACSConnectionPool#${line1:-$default_value23}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value25="GlobalDB"
     if [ "$line1" != 'GlobalDB' ]; then
	   sed -i -e "205 s#GlobalDB#${line1:-$default_value25}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value26="EncryptACSPassword"
     if [ "$line1" != 'EncryptACSPassword' ]; then
	   sed -i -e "216 s#EncryptACSPassword#${line1:-$default_value26}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value27="EncryptACSPassword"
     if [ "$line1" != 'EncryptACSPassword' ]; then
	   sed -i -e "704 s#EncryptACSPassword#${line1:-$default_value26}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

fi

