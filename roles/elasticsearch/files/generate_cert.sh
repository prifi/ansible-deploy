#!/bin/bash

if [ $# != 1 ];then
echo "Usage: $0 websitename"
echo "e.g: $0 sunfloweer"
exit 1;
fi

basepath=$(cd `dirname $0`; pwd)

/tmp/elasticsearch-7.16.0/bin/elasticsearch-certutil ca --out $basepath/$1-ca.p12 --pass ""
/tmp/elasticsearch-7.16.0/bin/elasticsearch-certutil cert --ca $basepath/$1-ca.p12 --ca-pass "" --out $basepath/$1-keystore.p12 --pass ""
