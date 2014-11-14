#!/bin/bash

set -xv

base_dir=$(dirname $0)

. ${base_dir}/vars.sh

# download and install kafka/zookeeper
wget -q -O kafka_${FILE_VERSION}.tar.gz ${KAFKA_MIRROR}
tar zxf kafka_${FILE_VERSION}.tar.gz
sudo mv kafka_${FILE_VERSION} /opt/kafka
