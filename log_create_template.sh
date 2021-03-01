#!/bin/bash

## To create with security disabled remove -u username:password to curl commands

HOST='localhost'
PORT=9200
INDEX_NAME='ufw_logs'
TEMPLATE_FILE='log_template_mapping.json'
URL="http://${HOST}:${PORT}"
USERNAME=elastic
PASSWORD=changeme

printf "\n== Script for uploading template == \n \n"

curl -s -u ${USERNAME}:${PASSWORD} -X PUT -H "Content-Type: application/json" ${URL}/_template/${INDEX_NAME}/ --data-binary ${TEMPLATE_FILE} > /dev/null
