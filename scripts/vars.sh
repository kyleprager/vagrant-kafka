#!/bin/bash

KAFKA_VERSION=0.8.0
SCALA_VERSION=2.8.0
FILE_VERSION=${SCALA_VERSION}-${KAFKA_VERSION}
KAFKA_MIRROR=http://apache.mirrors.hoobly.com/kafka/${KAFKA_VERSION}/kafka_${FILE_VERSION}.tar.gz
KAFKA_INSTALL=/opt/kafka/
KAFKA_BIN=${KAFKA_INSTALL}bin/
KAFKA_CONFIG=${KAFKA_INSTALL}config/
LOG_DIR=/tmp/
