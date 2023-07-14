#!/usr/bin/bash
for file in */summary.txt
do
echo $file
cat $file | sed 's/,//g' | sed 's/   */,/g' | sed 's/ bp//g' | sed 's/ /_/g' | sed 's/%//g' | tail \
 -n 7 | sed 's/,$//g' > ${file}_fixed.csv
done
