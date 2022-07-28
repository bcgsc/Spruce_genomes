#!/usr/bin/bash

fasta=$1

stringsToSearch=(EFE08 DB47 ABT39 E0M31)

for item in ${stringsToSearch[*]};
do
grep -e $item $fasta | sed 's/>//' >> order.tmp;
done

samtools faidx $fasta $(cat order.tmp) > Ordered_fasta4/$fasta
echo $fasta
rm order.tmp
