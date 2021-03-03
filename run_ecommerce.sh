#!/bin/bash

## To create with security disabled remove -u username:password to curl commands

HOST='localhost'
PORT=9200
INDEX_NAME='ecommerce'
LOG_FILE='ecommerce.log'
URL="http://${HOST}:${PORT}"
USERNAME=elastic
PASSWORD=changeme

printf "\n== Executing stack == \n \n"

tar -zxvf ecommerce.tgz
sed -i 's|2019-08|2020-02|' $LOG_FILE
tail $LOG_FILE

docker-compose up -d

printf "\n== Script for creating index and uploading data == \n \n"

#printf "\n== Deleting old index == \n\n"
#curl -s -u ${USERNAME}:${PASSWORD} -X DELETE ${URL}/${INDEX_NAME}

printf "\n== Creating Index - ${INDEX_NAME} == \n\n"


