#!/bin/bash

. config

"$voltdbBin"/csvloader -p teeLoader < "$workDir"/inputData.csv