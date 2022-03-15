#/bin/bash


if [ -f "$HOME/neo4j/ssl/neo4j.cert" ]; then
    echo "neo4j SSL certificate already exists"
    exit 1
fi

if [ ! -d "$HOME/neo4j/ssl" ]; then
  mkdir $HOME/neo4j/ssl
fi

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $HOME/neo4j/ssl/neo4j.key -out $HOME/neo4j/ssl/neo4j.cert
sudo chmod 0644 $HOME/neo4j/ssl/neo4j.key