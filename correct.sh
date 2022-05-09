#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "usage: ./correct.sh [long read file] [short read file] [genome size]"
	echo "[long read file]: the path of to-be-corrected reads"
	echo "[short read file]: the path of short reads that used for hybrid correction"
	echo "[genome size]: the genome size of the correpsonding speices, <number>[g|m|k], e.g. 228k|3g"
fi

lr=$1
sr=$2
gs=$3
name="${lr##*/}"
name="${name%.*}"

path1="vendors/build/bin/" 

#rm -rf ${path1}/${name}

#${path1}/canu -correct -d $name -p canu -genomeSize=$gs -batMemory=32 \
#corOutCoverage=10000 corMhapSensitivity=high corMinCoverage=0 minInputCoverage=0 -pacbio $lr

#gunzip ${path1}/${name}/canu.correctedReads.fasta.gz
#mv ${path1}/${name}/canu.correctedReads.fasta tmp.fasta


#rm -rf ${path1}/${name}
Lordec/lordec-correct -2 $sr -k 19 -s 3 -i $lr -o ${name}_corrected.fasta



