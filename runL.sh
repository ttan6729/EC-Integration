 #!/bin/bash
#run hercules with given sequences file
#note, bowite requies fasta start with > instead of #
{
	read
	while IFS=" "; read -r lr sr ref
	do 
		file="${lr##*/}"
        	name="${file%.*}"  #extract file name

	        if [ $lr == "#"* ]; then
                	continue
        	fi

		rm -rf $name
		mkdir $name
		echo $lr
		#awk "NR % 4 == 2" ${name}/short.fastq | sort -T ${name} | tr NT TN | ./ropebwt2 -LR | tr NT TN | ./fmlrc-convert ${name}/short.npy
		#sort -T $sr | tr NT TN | ./ropebwt2 -LR | tr NT TN | ./fmlrc-convert ${name}/short.npy
		echo "command"
		echo "./lordec-correct -2 $sr -k 19 -s 3 -i $lr -o ${name}/${name}_l.fasta"

		folder=${sr%/*}
		rm -rf ${folder}/*h5
		/usr/bin/time -v ./lordec-correct -2 $sr -k 19 -s 3 -i $lr -o ${name}/${name}_l.fasta 
		cp ${name}/${name}_l.fasta corrected/${name}_l.fasta
		rm -rf ${folder}/*h5
	done
} <$1

rm -rf '#files'
