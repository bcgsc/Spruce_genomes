#!/usr/bin/bash

for file in `ls alignments/*fasta`
do

paste <(echo $file | sed 's/.fasta//') <(cat $file | grep -v ">" | fold -w1 | sort | uniq -c | grep "-" | xargs | cut -d" " -f1) \
        <(cat $file | grep -v ">" | fold -w1 | sort | uniq -c | awk '{print $1}' | paste -sd+ | bc) |\
        awk -F'\t' '{print $1,$2,$3}' | sed 's/  / 0 /' >> All_gaps_freq.txt
done

awk '{print $1,$2,$3,$2/$3}' All_gaps_freq.txt | awk '$4 < 0.05 {print $1}' | sed 's#alignments/new##;s/_algn//' > ToKeep.in
