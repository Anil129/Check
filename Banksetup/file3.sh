#!/bin/bash
echo -e "\033[5;7;33mACS-TXN-PROPERTIES SETUP\033[m"
echo -e "\033[2;7;33mRemove "acs-txn.properties" file for new bank setup and if any errors while setup for second time.\033[m"

cp /home/anil/Downloads/Banksetup/file.txt  /home/anil/Downloads/Banksetup/sure
cat /home/anil/Downloads/Banksetup/file1.txt >> /home/anil/Downloads/Banksetup/sure
cat /home/anil/Downloads/Banksetup/file2.txt >> /home/anil/Downloads/Banksetup/sure
cp /home/anil/Downloads/Banksetup/file.txt /home/anil/Downloads/Banksetup/acs-txn.properties
cp /home/anil/Downloads/Banksetup/stand.xml /home/anil/Downloads/Banksetup/standalone.xml
cp /home/anil/Downloads/Banksetup/script /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh

#xdg-open /home/anil/Downloads/Banksetup/sure

vim sure

`lsof | grep sure`

if [ $? == 1 ]; then

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value1="192.168.104.21:11217 192.168.104.21:11218"
     if [ "$line1" == '#txn.property.cache.server.list=' ]; then
           sed -i "1 s/\(txn.property.cache.server.list=\)/${line1}${default_value1}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.cache.server.list=' ]; then            
           sed -i "1 s/\(txn.property.cache.server.list=\)/${line1}${default_value1}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
	   head -1 acs-txn.properties | sed -i -e "s/\(txn.property.cache.server.list=\).*/\1${line1:-$default_value1}/" /home/anil/Downloads/Banksetup/acs-txn.properties               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value2="192.168.104.22:11219 192.168.104.22:11220"
     if [ "$line1" == '#txn.property.cache.server.list.ha=' ]; then
           sed -i "2 s/\(txn.property.cache.server.list.ha=\)/${line1}${default_value2}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.cache.server.list.ha=' ]; then            
           sed -i "2 s/\(txn.property.cache.server.list.ha=\)/${line1}${default_value2}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -2 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.cache.server.list.ha=\).*/\1${line1:-$default_value2}/" /home/anil/Downloads/Banksetup/acs-txn.properties			 
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value3="172.31.12.81"
     if [ "$line1" == '#txn.property.http.proxy.ip=' ]; then
           sed -i "3 s/\(txn.property.http.proxy.ip=\)/${line1}${default_value3}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.http.proxy.ip=' ]; then            
           sed -i "3 s/\(txn.property.http.proxy.ip=\)/${line1}${default_value3}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else  
           head -3 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.http.proxy.ip=\).*/\1${line1:-$default_value3}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value4="6558"
     if [ "$line1" == '#txn.property.http.proxy.port=' ]; then
           sed -i "4 s/\(txn.property.http.proxy.port=\)/${line1}${default_value4}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.http.proxy.port=' ]; then            
           sed -i "4 s/\(txn.property.http.proxy.port=\)/${line1}${default_value4}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -4 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.http.proxy.port=\).*/\1${line1:-$default_value4}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value5="192.168.12.52"
     if [ "$line1" == '#txn.property.messager.server.ip=' ]; then
           sed -i "5 s/\(txn.property.messager.server.ip=\)/${line1}${default_value5}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.messager.server.ip=' ]; then            
           sed -i "5 s/\(txn.property.messager.server.ip=\)/${line1}${default_value5}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -5 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.messager.server.ip=\).*/\1${line1:-$default_value5}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value6="8023"
     if [ "$line1" == '#txn.property.messager.server.port=' ]; then
           sed -i "6 s/\(txn.property.messager.server.port=\)/${line1}${default_value6}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.messager.server.port=' ]; then            
           sed -i "6 s/\(txn.property.messager.server.port=\)/${line1}${default_value6}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -6 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.messager.server.port=\).*/\1${line1:-$default_value6}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value7="192.168.105.65"
     if [ "$line1" == '#txn.property.node.identifier=' ]; then
           sed -i "7 s/\(txn.property.node.identifier=\)/${line1}${default_value7}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.node.identifier=' ]; then            
           sed -i "7 s/\(txn.property.node.identifier=\)/${line1}${default_value7}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -7 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.node.identifier=\).*/\1${line1:-$default_value7}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value8="http\:\/\/192.168.108.24\:8090\/ACSWeb\/jsp\/BankGateway.jsp"
     if [ "$line1" == '#txn.property.um.proxy.url=' ]; then
           sed -i "8 s/\(txn.property.um.proxy.url=\)/${line1}${default_value8}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.property.um.proxy.url=' ]; then            
           sed -i "8 s/\(txn.property.um.proxy.url=\)/${line1}${default_value8}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -8 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.um.proxy.url=\).*/\1${line1:-$default_value8}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value9="192.168.1.22"
     if [ "$line1" == '#txn.logging.smtp.host=' ]; then
           sed -i "9 s/\(txn.logging.smtp.host=\)/${line1}${default_value9}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.logging.smtp.host=' ]; then            
           sed -i "9 s/\(txn.logging.smtp.host=\)/${line1}${default_value9}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -9 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.host=\).*/\1${line1:-$default_value9}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value10="25"
     if [ "$line1" == '#txn.logging.smtp.port=' ]; then
           sed -i "10 s/\(txn.logging.smtp.port=\)/${line1}${default_value10}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.logging.smtp.port=' ]; then            
           sed -i "10 s/\(txn.logging.smtp.port=\)/${line1}${default_value10}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -10 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.port=\).*/\1${line1:-$default_value10}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value11="acs.staging.alerts@enstage.com"
     if [ "$line1" == '#txn.logging.smtp.from=' ]; then
           sed -i "11 s/\(txn.logging.smtp.from=\)/${line1}${default_value11}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.logging.smtp.from=' ]; then            
           sed -i "11 s/\(txn.logging.smtp.from=\)/${line1}${default_value11}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else            
           head -11 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.from=\).*/\1${line1:-$default_value11}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value12="acs.staging.router@gmail.com"
     if [ "$line1" == '#txn.logging.smtp.to=' ]; then
           sed -i "12 s/\(txn.logging.smtp.to=\)/${line1}${default_value12}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.logging.smtp.to=' ]; then            
           sed -i "12 s/\(txn.logging.smtp.to=\)/${line1}${default_value12}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -12 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.to=\).*/\1${line1:-$default_value12}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value13="ACS - Enrollment Server - Error Alerts"
     if [ "$line1" == '#txn.logging.smtp.subject=' ]; then
           sed -i "13 s/\(txn.logging.smtp.subject=\)/${line1}${default_value13}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.logging.smtp.subject=' ]; then            
           sed -i "13 s/\(txn.logging.smtp.subject=\)/${line1}${default_value13}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else            
           head -13 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.subject=\).*/\1${line1:-$default_value13}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value14="192.168.106.14" 
     if [ "$line1" == '#txn.database1.hostname=' ]; then
           sed -i "14 s/(txn.database1.hostname=\)/${line1}${default_value14}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.database1.hostname=' ]; then            
           sed -i "14 s/\(txn.database1.hostname=\)/${line1}${default_value14}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -14 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.database1.hostname=\).*/\1${line1:-$default_value14}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value15="192.168.106.96"
     if [ "$line1" == '#txn.database2.hostname=' ]; then
           sed -i "15 s/(txn.database2.hostname=\)/${line1}${default_value15}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.database2.hostname=' ]; then            
           sed -i "15 s/\(txn.database2.hostname=\)/${line1}${default_value15}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -15 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.database2.hostname=\).*/\1${line1:-$default_value15}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value16='F0R#St'
     if [ "$line1" == '#txn.https.ssl.cert.pwd=' ]; then
           sed -i "16 s/\(txn.https.ssl.cert.pwd=\)/${line1}${default_value16}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.https.ssl.cert.pwd=' ]; then            
           sed -i "16 s/\(txn.https.ssl.cert.pwd=\)/${line1}${default_value16}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -16 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.https.ssl.cert.pwd=\).*/\1${line1:-$default_value16}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value17="servercerts"
     if [ "$line1" == '#txn.https.ssl.cert.filename=' ]; then
           sed -i "17 s/\(txn.https.ssl.cert.filename=\)/${line1}${default_value17}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.https.ssl.cert.filename=' ]; then            
           sed -i "17 s/\(txn.https.ssl.cert.filename=\)/${line1}${default_value17}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else            
          head -17 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.https.ssl.cert.filename=\).*/\1${line1:-$default_value17}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value18="server"
     if [ "$line1" == '#txn.server.name=' ]; then
           sed -i "18 s/\(txn.server.name=\)/${line1}${default_value18}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     elif [ "$line1" = 'txn.server.name=' ]; then            
           sed -i "18 s/\(txn.server.name=\)/${line1}${default_value18}/g" /home/anil/Downloads/Banksetup/acs-txn.properties
     else 
           head -18 acs-txn.properties | tail -1 | sed -i -e "s/\(txn.server.name=\).*/\1${line1:-$default_value18}/" /home/anil/Downloads/Banksetup/acs-txn.properties
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

#fi

echo -e "\033[7;2;33mStarting Standalone setup wizard\033[m"

#cp /home/anil/Downloads/Banksetup/file1.txt /home/anil/Downloads/Banksetup/sure

#vim sure

#`lsof | grep sure`

#if [ $? == 1 ]; then

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value19='/appserver/acsapp/'
     if [ "$line1" != 'ACCOSA_APP_ROOT' ]; then
	   sed -i -e "35 s#/appserver/acsapp/#${line1:-$default_value19}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value20='http://192.168.108.24:8090/ACSWeb/jsp/BankGateway.jsp'
     if [ "$line1" != 'UM_PROXY_URL' ]; then
	   sed -i -e "55 s#192.168.108.24:8090#${line1:-$default_value20}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value21='/appserver/acsapp/'
     if [ "$line1" != 'LINUX_ROOT_DIR' ]; then
	   sed -i -e "60 s#/appserver/acsapp/#${line1:-$default_value21}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value22='192.168.1.2:9966'
     if [ "$line1" != 'com.enstage.hsm.HSMInterface.forceIPAndPort' ]; then
	   sed -i -e "63 s#192.168.1.2:9966#${line1:-$default_value22}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value23='GlobalDB'
     if [ "$line1" != 'entransact-GlobalDB' ]; then
	   sed -i -e "183 s#GlobalDB#${line1:-$default_value23}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value24="GlobalDB"
     if [ "$line1" != 'ACSConnectionPool-GlobalDB' ]; then
	   sed -i -e "205 s#GlobalDB#${line1:-$default_value24}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value25="GlobalDB"
     if [ "$line1" != 'CommonConnectionPool-GlobalDB' ]; then
	   sed -i -e "227 s#GlobalDB#${line1:-$default_value25}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value26="OTP"
     if [ "$line1" != 'OTPConnectionPool-GlobalDB' ]; then
	   sed -i -e "249 s#OTP#${line1:-$default_value26}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value27="GlobalDB"
     if [ "$line1" != 'IBSConnectionPool-GlobalDB' ]; then
	   sed -i -e "315 s#OTP#${line1:-$default_value27}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value28="BankConnectionPool"
     if [ "$line1" != 'BankConnectionPool' ]; then
	   sed -i -e "336 s#BankConnectionPool#${line1:-$default_value28}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value31="BankConnectionPool"
     if [ "$line1" != 'BankConnectionPool' ]; then
	   sed -i -e "763 s#BankConnectionPool#${line1:-$default_value30}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi

sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value29="GlobalDB"
     if [ "$line1" != 'BankConnectionPool-GlobalDB' ]; then
	   sed -i -e "337 s#GlobalDB#${line1:-$default_value29}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value30="EncryptBankPassword"
     if [ "$line1" != 'EncryptBankPassword' ]; then
	   sed -i -e "344 s#EncryptBankPassword#${line1:-$default_value30}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value31="EncryptBankPassword"
     if [ "$line1" != 'EncryptBankPassword' ]; then
	   sed -i -e "758 s#EncryptBankPassword#${line1:-$default_value30}#g" /home/anil/Downloads/Banksetup/standalone.xml               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value31='/opt/jdk1.8.0_161'
     if [ "$line1" != 'JAVA_HOME=/opt/jdk1.8.0_161' ]; then
	   sed -i -e "3 s#/opt/jdk1.8.0_161#${line1:-$default_value31}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value32='/appserver/acsapp/wildfly-11.0.0.Final'
     if [ "$line1" != 'JB_HOME=' ]; then
	   sed -i -e "12 s#/appserver/acsapp/wildfly-11.0.0.Final#${line1:-$default_value20}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value33='axislt1-prqwf-n1'
     if [ "$line1" != 'JB_SERVER_NAME=axislt1-prqwf-n1' ]; then
	   sed -i -e "13 s#axislt1-prqwf-n1#${line1:-$default_value33}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

read -p "line1" line1 < /home/anil/Downloads/Banksetup/sure
default_value34='15'
     if [ "$line1" != 'Offset_value' ]; then
	   sed -i -e "17 s#15#${line1:-$default_value34}#g" /home/anil/Downloads/Banksetup/axislt1-prqwf-n1.sh               
     fi
sed -i '1 d' /home/anil/Downloads/Banksetup/sure

Bank=`cat ~/Downloads/Banksetup/script | head -12 | tail -1 | tr '/' " " | awk '{print $NF}'`
node=`cat ~/Downloads/Banksetup/script | head -13 | tail -1 | tr '=' " " | awk '{print $NF}'`
mkdir -p ~/Downloads/Banksetup/$Bank/$node/deployment ~/Downloads/Banksetup/$Bank/environment ~/Downloads/Banksetup/$Bank/bin \
~/Downloads/Banksetup/$Bank/modules/com/enstage ~/Downloads/Banksetup/$Bank/$node/deployment ~/Downloads/Banksetup/$Bank/$node/configuration/
mv ~/Downloads/Banksetup/axislt1-prqwf-n1.sh ~/Downloads/Banksetup/$node.sh
cp ~/Downloads/Banksetup/acs-txn.properties ~/Downloads/Banksetup/$Bank/environment
cp ~/Downloads/Banksetup/$node.sh ~/Downloads/Banksetup/$Bank/bin/
cp ~/Downloads/Banksetup/standalone.xml ~/Downloads/Banksetup/$Bank/$node/configuration/

fi
