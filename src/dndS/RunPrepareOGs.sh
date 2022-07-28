#!/usr/bin/bash

lista=list_fasta_ordered.in

while read line
do
#get name of og
nam=$(echo $line | rev | cut -d"/" -f1 | rev | sed 's/.fa//')
#msa
mafft --auto $line > ${nam}.msa
#get cds
faSomeRecords All_4spruceAnnotated.fasta <(grep ">" ${nam}.msa | sed 's/>//') ${nam}.cds
#pal2nal cds alignments
pal2nal.pl ${nam}.msa ${nam}.cds -output fasta > ${nam}_algn.fasta
pal2nal.pl ${nam}.msa ${nam}.cds -output paml > ${nam}.paml
#get phylyp format
Fasta2Phylip.pl ${nam}_algn.fasta ${nam}_algn.phy
echo $nam
done<$lista
