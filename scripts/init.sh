#!/bin/bash

set -xv

base_dir=/vagrant/
SCRIPTS_DIR=${base_dir}/scripts/

${SCRIPTS_DIR}install_java.sh

${SCRIPTS_DIR}install_kafka.sh

echo "host.name=10.30.3.2" >> /opt/kafka/config/server.properties

${SCRIPTS_DIR}start_zookeeper.sh

sleep 10

${SCRIPTS_DIR}start_broker.sh

sleep 10

${SCRIPTS_DIR}create_topic.sh
