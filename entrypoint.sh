#!/bin/sh
for i in $(seq $1 $2)
do
    redis-cli -h redis RPUSH "$1" "$i" > /dev/null
    echo "Pushed rank $i."
done
