#!/bin/bash

user=root
installerScript=voltdbInstall.sh
voltdbPackage=LINUX-voltdb-ent-4.7.tar.gz
wget http://voltdb.com/downloads/technologies/server/"$voltdbPackage"

for node in {nsql01,nsql02,nsql03}; do

	echo "Installing VoltDB on node $node"
	scp "$installerScript" "$voltdbPackage" "$user"@"$node":~/
	ssh "$user"@"$node" ~/"$installerScript"

done