#!/bin/bash

filesNumber=0
filesDates=()
for file in ~/Downloads/*
do
    fileDate=$(date -r "$file" "+%m-%d-%Y")
    if [[ ! " ${filesDates[*]} " =~ ${fileDate} ]]; then
        filesDates+=( $fileDate )
    fi
    ((filesNumber++))
done

alertMessage="$filesNumber files/folders in your Downloads. Dated from ${filesDates[${#filesDates[@]} - 1]} to ${filesDates[0]}. Time to clean it up?"
echo $alertMessage