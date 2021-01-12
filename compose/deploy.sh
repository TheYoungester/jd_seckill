#!/bin/bash
echo "eid: $1"
echo "fp: $2"
echo "phone: $3"
sed -i "s/_eid_/$1/g" common/configs/config.ini
sed -i "s/_fp_/$2/g" common/configs/config.ini
sed -i "s/phone/$3/g" docker-compose.yml
docker-compose up -d