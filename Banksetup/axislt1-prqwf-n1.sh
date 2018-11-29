#!/bin/sh
#removed -XX:PermSize=256m
export JAVA_HOME=/acs/app/jdk1
export CLASSPATH=$JAVA_HOME/lib/tools.jar:.:
export PATH=$JAVA_HOME/bin:$PATH
export JAVA_OPTS="-server -Xms512m
-Xmx2048m -XX:NewRatio=1
-Xmaxjitcodesize200m -XX:HeapDumpPath=java.hprof
 -XX:+PrintClassHistogram
-XX:+PrintCommandLineFlags "

export JB_HOME=/acs/app
export JB_SERVER_NAME=pareq-node1
sh ./standalone.sh \
	-c standalone.xml \
	-Djboss.server.base.dir=$JB_HOME/$JB_SERVER_NAME \
	-Djboss.socket.binding.port-offset=5 \
	-Dorg.wildfly.openssl.path=/lib/x86_64-linux-gnu \
	-Dtxn.server.name=$JB_SERVER_NAME \
	--properties=$JB_HOME/environment/acs-txn.properties \
	-b 0.0.0.0 &
