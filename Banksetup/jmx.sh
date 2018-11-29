#!/bin/bash
echo -e "\033[5;7;33mEnter * to exit from setup\033[m"
cd /home/anil/Documents/wildfly-11.0.0.Final/environment/
PS3="Select option: "
select var in  acs-setup standalone-setup
do
   case $var in
    acs-setup)while : ;
       do           


	echo -e "\033[5;7;33mEnter * to for standalone setup\033[m"
	cd /home/anil/Documents/wildfly-11.0.0.Final/environment/
	cat acs-txn.properties | grep -n ""
	read -p " Enter opt: " opt
	case $opt in 
	
		1) read -p "txn.property.cache.server.list: " Ip < file.txt
			default_value1="192.168.104.21:11217 192.168.104.21:11218"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.cache.server.list=\).*/\1${Ip:-$defalut_value1}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties                  
		;;
		2) read -p "txn.property.cache.server.list.ha: " Ip1 < file.txt
			default_value2="192.168.104.22:11219 192.168.104.22:11220"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.cache.server.list.ha=\).*/\1${Ip1:-$defalut_value2}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties			
		;;
		3) read -p "txn.property.http.proxy.ip: " Ip3
			default_value3="172.31.12.81"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.http.proxy.ip=\).*/\1${Ip3:-$defalut_value3}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		4) read -p "txn.property.http.proxy.port: " port 
			defalut_value4="6558"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.http.proxy.port=\).*/\1${port:-defalut_value4}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		5) read -p "txn.property.messager.server.ip: " Ip4
			default_value5="192.168.12.52"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.messager.server.ip=\).*/\1${Ip4:-$defalut_value5}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		6) read -p "txn.property.messager.server.port: " port1
			default_value6="8023"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.messager.server.port=\).*/\1${port1:-defalut_value6}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		7) read -p "txn.property.node.identifier: " Ip5
			default_value7="192.168.105.65"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.node.identifier=\).*/\1${Ip5:-defalut_value7}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		8) read -p "txn.property.um.proxy.url: " link
			default_value8="http://192.168.108.24:8090/ACSWeb/jsp/BankGateway.jsp"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.property.um.proxy.url=\).*/\1${link:-defalut_value8}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		9) read -p "txn.logging.smtp.host: " Ip6
			default_value9="192.168.1.22"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.host=\).*/\1${Ip6:-$defalut_value9}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		10) read -p "txn.logging.smtp.port: " port2
			default_value10="25"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.port=\).*/\1${port2:-$defalut_value10}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		11) read -p "txn.logging.smtp.from: " link1
			default_value11="acs.staging.alerts@enstage.com"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.from=\).*/\1${link1:-$defalut_value11}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		12) read -p "txn.logging.smtp.to: " link2
			default_value12="acs.staging.router@gmail.com"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.to=\).*/\1${link2:-$defalut_value12}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		13) read -p "txn.logging.smtp.subject: " v1 
			default_value13="ACS - Enrollment Server - Error Alerts"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.logging.smtp.subject=\).*/\1${v1:-defalut_value13}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.propertiesstandalone.xml
		;;
		14) read -p "#txn.database1.hostname: " Ip7
			default_value14="192.168.106.14" 
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(#txn.database1.hostname=\).*/\1${Ip7:-$defalut_value14}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		15) read -p "txn.database1.hostname: " Ip8
			default_value15="192.168.106.96"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.database1.hostname=\).*/\1${Ip98:-defalut_value15}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		16) read -p "txn.https.ssl.cert.pwd: " value
			default_value16='F0R#St'
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.https.ssl.cert.pwd=\).*/\1${value:-defalut_value16}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		17) read -p "txn.https.ssl.cert.filename: " value1
			daefult_value17="servercerts"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(txn.https.ssl.cert.filename=\).*/\1${value1:-defalut_value17}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		18) read -p "#txn.server.name: " ser
			deafult_value18="server"
			head -$opt acs-txn.properties | tail -1 | sed -i -e "s/\(#txn.server.name=\).*/\1${ser:-defalut_value18}/" /home/anil/Documents/wildfly-11.0.0.Final/environment/acs-txn.properties
		;;
		*) exec ~/Documents/Banksetup/jmx.sh
	esac
       done

     ;;
    standalone-setup) echo -e "\033[7;2;33mStarting Standalone setup wizard\033[m"
                     ansible-playbook /home/anil/Documents/Banksetup/standalone.yml -vvvv
     ;;
    *) exit
     ;;
   esac
done

