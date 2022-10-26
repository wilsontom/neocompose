#!/bin/bash

if [ ! -d "$HOME/neo4j" ]; then
  mkdir $HOME/neo4j
fi

if [ ! -d "$HOME/neo4j/data" ]; then
  mkdir $HOME/neo4j/data
fi

if [ ! -d "$HOME/neo4j/logs" ]; then
  mkdir $HOME/neo4j/logs
fi

if [ ! -d "$HOME/neo4j/conf" ]; then
  mkdir $HOME/neo4j/conf
fi

if [ ! -d "$HOME/neo4j/ssl" ]; then
  mkdir $HOME/neo4j/ssl
fi

if [ ! -d "$HOME/neo4j/plugins" ]; then
  mkdir $HOME/neo4j/plugins
fi


if [ -f "$HOME/neo4j/ssl/neo4j.cert" ]; then
    echo "neo4j SSL certificate already exists"
    exit 1
fi

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $HOME/neo4j/ssl/neo4j.key -out $HOME/neo4j/ssl/neo4j.cert
sudo chmod 0644 $HOME/neo4j/ssl/neo4j.key
