#!/bin/bash

. config

inputFile="$1"

"$voltdbBin"/csvloader -p VoltDBLoader < "$workDir"/"$inputFile"
"$voltdbBin"/csvloader -p VoltDBExportLoader < "$workDir"/"$inputFile"