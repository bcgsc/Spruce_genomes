#reshape tsv output from Interproscan
#ex:
awk -F$'\t' '{print $1,$14}' PG29ntEdit.all.maker.proteinsLoweAEDpolishCompleteFinal.tsv | tr ' ' '\t' | awk  '$2 !=""' | sort | uniq > PG29ntEdit.all.maker.proteinsLoweAEDpolishCompleteFinal_go.tsv

#input is name gene<tab>go_term
bash Reshape_goAllEntities.sh file | sort | uniq > file1

bash Transform2GAF.sh file1 "name_genotype" > file2

bash MapToGoSplim.sh file2 > file3
