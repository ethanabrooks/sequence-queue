#!/bin/sh
for i in $(seq 0 $(($2 - 1)))
do
    redis-cli -h redis RPUSH "$1" "$i" > /dev/null
    echo "Pushed rank $i."
done
