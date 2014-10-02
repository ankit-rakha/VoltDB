#!/bin/bash

. config

cd "$workDir"
rm -rf "$voltdbPackage"
wget http://voltdb.com/downloads/technologies/server/"$voltdbPackage"

for node in {nsql01,nsql02,nsql03}; do

	echo "Installing VoltDB on node $node"
	scp config "$installerScript" "$voltdbPackage" "$verticaClientRPM" "$voltdbUser"@"$node":"$workDir"/
	ssh "$voltdbUser"@"$node" "$workDir"/"$installerScript"

done