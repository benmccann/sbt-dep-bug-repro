#!/bin/sh

COMPILER_DIR=$(dirname "$0")
SCHEMA_DIR="${COMPILER_DIR}/../schema"
CLASS_DIR="${COMPILER_DIR}/../src/main/java"
CRAWLER_DIR="${COMPILER_DIR}/../../../connectifier-crawler/src/main/java"
AVRO_TOOLS_JAR="${COMPILER_DIR}/avro-tools-1.7.6.jar"

java -jar "${AVRO_TOOLS_JAR}" compile protocol ${SCHEMA_DIR}/* "${CLASS_DIR}"

if [ -e "${CRAWLER_DIR}" ]; then
  cp -r "${CLASS_DIR}/com/connectifier/midtier/avro" "${CRAWLER_DIR}/com/connectifier/midtier/"
fi
