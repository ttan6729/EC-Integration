cd#!/bin/bash
#run lorma with given sequences
echo "command: ./run.sh file_list.txt "

{
    read  #skip the first lin
    while IFS=" "; read -r lr sr ref gs
    do
        name="${lr##*/}"
        name="${name%.*}"  #extract file name

	rm -rf $name 
#	gs="1g"

	if [[ $lr == "#"* ]]; then
  		continue
	fi

	/usr/bin/time -v ./canu -correct -d $name -p canu -genomeSize=$gs -batMemory=32 \
	corOutCoverage=10000 corMhapSensitivity=high corMinCoverage=0 minInputCoverage=0  \
	-pacbio $lr
	echo "gs: $gs"
	#/usr/bin/time -v ./canu -correct -d $name -p canu -genomeSize=$gs -batMemory=64 -pacbio $lr


	echo "long read file: $lr $name, genome size: $gs"
	gunzip ${name}/canu.correctedReads.fasta.gz
	mv ${name}/canu.correctedReads.fasta corrected/${name}_c.fasta
	#rm -rf ${name}
    done
} < $1

