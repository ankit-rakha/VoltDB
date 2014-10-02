#!/bin/bash

. config

rm -rf /opt/voltdb
tar -zxvf ~/"$voltdbPackage" -C /opt
mv /opt/"$voltdbPackageBaseName" /opt/voltdb
rpm -Uvh "$workDir"/"$verticaClientRPM" && cp "$verticaDriverFilePath"/vertica-jdbc* "$voltdbDriverFilePath"/