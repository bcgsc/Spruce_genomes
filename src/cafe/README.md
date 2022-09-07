```
bash LoopShell.sh Species_tree_labelled.tre.ultrametric.tre Orthogroups.GeneCountAfterFilt.tsv

#get ogs
grep -f <(awk '{print $2}' reports/summary_run3_fams2Long.txt | awk -F '[' '{print $1}' | sort | uniq) Orthogroups.GeneCountFilt.tsv | cut -f2- > summary_run1_ancSignificant.txt
grep -f <(grep -f Spruce.in reports/summary_run3_fams2Long.txt | awk '{print $2}' | awk -F '[' '{print $1}' | sort | uniq) Orthogroups.GeneCountFilt.tsv | cut -f2- > summary_run1_ancSignificantSpruce.txt
```
