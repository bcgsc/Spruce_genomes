```
wget http://snapshot.geneontology.org/ontology/go-basic.obo

#downloaded on the 22nd January 2019

# go slims
http://current.geneontology.org/ontology/subsets/goslim_plant.obo
http://current.geneontology.org/ontology/subsets/goslim_generic.obo


#the other files are reshaped based on the following blog
http://avrilomics.blogspot.com/2015/06/creating-go-slim-and-mapping-go-terms.html

grep "id: GO:" goslim_generic.obo | grep -v alt | cut -d" " -f2 > goslim_terms.txt

#names and GO terms
wget http://www.geneontology.org/doc/GO.terms_alt_ids

#add names to GO terms - manually remove the last rows because not contaning GO terms - 98 terms
paste -d '\t' <(grep "^id: " goslim_plant.obo | sed 's/id: //') <(grep "name: " goslim_plant.obo | sed 's/name: //')  <(grep "namespace: " goslim_plant.obo | sed 's/namespace: //')  > goslim_plant.nams
44 biological_process
28 cellular_component
26 molecular_function

#for the generic terms
paste -d $'\t' <(grep "^id: " go-basic.obo | sed 's/id: //') <(grep "^name: " go-basic.obo | sed 's/name: //g' | sed 's/ /_/g') <(grep "^namespace: " go-basic.obo | sed 's/namespace: //g' | sed 's/ /_/g') > go-basic.names
```
