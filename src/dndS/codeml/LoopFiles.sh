#!/usr/bin/bash

list=/projects/spruceup_scratch/dev/SprucePaper2018/GeneFamilies/syn_non-synAnalysis/orthogroups/orthogroups_namsPglaucaRef/list_genes.in

while read line;
do
nam=$(echo $line | rev | cut -d"/" -f1 | rev | sed 's/new//;s/.paml//')
echo $nam
mkdir $nam
cd $nam
cp ../conifer_unrooted.tree ./
cp ../codeml.ctl ./codeml_$nam.ctl
sed -i "s#_RePlaCe_#$line#" codeml_$nam.ctl
codeml codeml_$nam.ctl > log
cd ../
done<$list
