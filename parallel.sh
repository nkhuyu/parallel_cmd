#!/bin/bash

fileName=$1
line=$2

split -d -l $line $fileName $fileName.part

for fl in $fileName.part*
do
echo "Process php test.php " $fl "has started: "
php test.php $fl & pid=$!
PID_LIST+=" $pid";
done

trap "kill $PID_LIST" SIGINT
echo "Parallel processes have started";
wait $PID_LIST
echo
echo "All processes have completed";

echo "Merge files ... "
cat output* > $fileName.output.csv
echo "Finished Merge !"

echo "Clean temp files ... "
for fl in $fileName.part*
do
rm -rf $fl
rm -rf output$fl
done
echo "Finished clean temp files !"