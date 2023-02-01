#! /bin/bash
# script for findout.sh

echo "exe files: " > list_exec.txt
echo "Non exe files: " > list_no_exec.txt

exec=0
no_exec=0

for f in `ls $1` 
do
	if [ -x $f ]
	then 
		let "exec=$exec+1"
		echo $f >> list_exec.txt
	else 
		let "no_exec=$no_exec+1"
		echo $f >> list_no_exec.txt
	fi
done
echo "nb of exe files: $exec"
echo "nb of non exe files: $no_exec"
