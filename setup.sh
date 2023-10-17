#!/bin/bash
host=$1
ip=$2
docker compose run taky takyctl setup --host $host --public-ip $ip  --user taky_daemon