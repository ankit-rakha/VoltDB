#!/bin/bash

. config

voltdbPackageBaseName=$(basename "$voltdbPackage" .tar.gz | sed -e 's/LINUX-//g')

rm -rf /opt/voltdb
cd "$workDir" && tar -zxvf "$voltdbPackage" -C /opt
mv /opt/"$voltdbPackageBaseName" /opt/voltdb
rpm -Uvh "$workDir"/"$verticaClientRPM"
cp "$verticaDriverFilePath"/vertica-jdbc* "$voltdbDriverFilePath"/