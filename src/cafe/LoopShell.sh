#!/usr/bin/bash

###########################################

species_tree=$1
geneFam_counts=$2

cut -f1-8 $geneFam_counts | awk -F '\t' -v OFS='\t' '{print "(null)",$0}' | sed '1!b;s/(null)/Desc/'  > Orthogroups.GeneCount1.tsv

#filter large gene families (> 100)
python ../../../../ScriptsTest/clade_and_size_filter.py -i Orthogroups.GeneCount1.tsv -o Orthogroups.GeneCountFilt.tsv -s

mkdir -p reports

for i in {1..1}
do
echo $i
nohup bash RunCafeParams.sh $i&
done
