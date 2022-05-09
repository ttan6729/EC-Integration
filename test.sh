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

rm -rf ${name}

/mnt/data6t/EC/result/Canu/build/bin/canu -correct -d $name -p canu -genomeSize=$gs -batMemory=32 \
corOutCoverage=10000 corMhapSensitivity=high corMinCoverage=0 minInputCoverage=0 -pacbio $lr 

#gunzip ${name}/canu.correctedReads.fasta.gz
#mv ${name}/canu.correctedReads.fasta ../../../corrected/tmp.fasta
#rm -rf ${name}
cd ../../../
#Lordec/lordec-correct -2 $sr -k 19 -s 3 -i tmp.fasta -o ${name}_corrected.fasta



#Lordec
#vendors/build/bin/canu 
