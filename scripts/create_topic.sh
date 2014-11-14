#!/bin/bash

set -xv

base_dir=$(dirname $0)

. ${base_dir}/vars.sh

# create test topic
${KAFKA_BIN}kafka-create-topic.sh --zookeeper localhost:2181 --replica 1 --partition 1 --topic test
