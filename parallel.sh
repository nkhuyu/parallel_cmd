#!bash/bin

$fileName=$1
$line=$2


split -d l $line $fileName $fileName

for fl in $fileName.part*
do
echo $fl
done

 