#!/bin/bash

set -xv

base_dir=$(dirname $0)

. ${base_dir}/vars.sh

# start 1 kafka broker
${KAFKA_BIN}kafka-server-start.sh ${KAFKA_CONFIG}server.properties > ${LOG_DIR}kafka-server.log &
