#!/bin/bash

cd /opt/activemq

java -Xms${XMS:=256M} -Xmx${XMX:=256M} \
	-Djava.util.logging.config.file=logging.properties \
	-Dcom.sun.management.jmxremote \
	-Dactivemq.classpath=/data/broker/conf \
	-Dactivemq.home=/opt/activemq \
	-Dactivemq.base=/opt/activemq \
	-Dactivemq.conf=/data/broker/conf \
	-Dactivemq.data=/data/broker \
	-jar /opt/activemq/bin/activemq.jar \
	start

