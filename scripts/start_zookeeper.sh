#!/bin/bash

set -xv

base_dir=$(dirname $0)

. ${base_dir}/vars.sh

# start zookeeper
${KAFKA_BIN}/zookeeper-server-start.sh ${KAFKA_CONFIG}zookeeper.properties > ${LOG_DIR}zookeeper.log &
