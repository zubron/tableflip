#!/bin/bash
face()
{
    echo -e "\033[u\033[1C\x28\033[1C\xc2\xb0\033[1C\xc2\xb0\x29"
}

table()
{
    face
    echo -e "\033[u\033[2C\xe2\x95\xb7\033[1C\xe2\x96\xad\033[2C\xe2\x95\xb7"
    echo -e "\033[u\033[8C \xe2\x94\xb3\xe2\x94\x81\xe2\x94\xb3  "
    sleep 0.5
}

tableflip()
{
    face
    echo -e "\033[u\033[2C\xe2\x95\xaf\033[1C\xe2\x96\xa1\033[2C\xe2\x95\xaf"
    echo -e "\033[u\033[8C\xef\xb8\xb5 \xe2\x94\xbb\xe2\x94\x81\xe2\x94\xbb"
    sleep 0.5
}

stopflippingtablesfornow()
{
    echo -e "\033[u"
    exit
}

trap stopflippingtablesfornow SIGINT

echo -e "\n\033[1F\033[s"
while :
do
    table
    tableflip
done
