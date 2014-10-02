#!/bin/bash

. config

inputFile="$1"

"$voltdbBin"/csvloader -s nsql01,nsql02,nsql03 -p VoltDBLoader < "$workDir"/"$inputFile"
"$voltdbBin"/csvloader -s nsql01,nsql02,nsql03 -p VoltDBExportLoader < "$workDir"/"$inputFile"