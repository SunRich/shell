#!/bin/sh


# Get data
data=$(echo "SELECT mobile FROM khome_space where uid in(209216,100013) " |mysql sq_kaoyaya -h test.server.kaoyaya.com -P 33006  -uroot -pkaoyayacom2017 | awk 'NR>1')

for mobile in ${data}; do
    echo $mobile;
done
