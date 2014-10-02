#!/bin/bash
rm -rf /opt/voltdb
wget http://voltdb.com/downloads/technologies/server/LINUX-voltdb-ent-4.7.tar.gz
tar -zxvf LINUX-voltdb-ent-4.7.tar.gz -C /opt
mv /opt/voltdb-ent-4.7 /opt/voltdb
