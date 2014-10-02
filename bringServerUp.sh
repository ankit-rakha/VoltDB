#!/bin/bash

. config

"$voltdbBin"/voltdb compile "$workDir"/"$schemaFile";

for node in {nsql02,nsql03}; do

	echo "#!/bin/bash" > bringServerUp_"$node".sh
	echo ". config" >> bringServerUp_"$node".sh
	echo ""$voltdbBin"/voltdb create "$workDir"/"$catalogFile" -d "$workDir"/"$deploymentFile" -H "$electedMaster" -l "$licensePath"/"$licenseFile";" >> bringServerUp_"$node".sh
	chmod +x bringServerUp_"$node".sh
	
	ssh "$voltdbUser"@"$node" mkdir -p "$workDir"
	scp "$workDir"/config "$workDir"/"$catalogFile" "$workDir"/"$deploymentFile" "$workDir"/bringServerUp_"$node".sh "$voltdbUser"@"$node":"$workDir"/

done

"$voltdbBin"/voltdb create "$workDir"/"$catalogFile" -d "$workDir"/"$deploymentFile" -H "$electedMaster" -l "$licensePath"/"$licenseFile";