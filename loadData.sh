#!/bin/bash

. config

inputFile="$1"

"$voltdbBin"/csvloader -p teeLoader < "$workDir"/"$inputFile"