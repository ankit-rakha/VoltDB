#!/bin/bash

. config

cd && wget http://voltdb.com/downloads/technologies/server/"$voltdbPackage"

for node in {nsql01,nsql02,nsql03}; do

	echo "Installing VoltDB on node $node"
	scp "$installerScript" "$voltdbPackage" "$verticaClientRPM" "$voltdbUser"@"$node":~/
	ssh "$voltdbUser"@"$node" ~/"$installerScript"

done