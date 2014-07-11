#!bash/bin

fileName=$1
line=$2

split -d -l $line $fileName $fileName.part

for fl in $fileName.part*
do
php test.php $fl &
done
cat output* > $fileName.output.csv

 