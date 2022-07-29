#/usr/bin/bash

#sequences contains the fasta chloroplast genomes in fasta format
mashtree_jackknife.pl sequences/*fasta --outmatrix Out_matrix --reps 100 --numcpus 24 > chloroplast.tree

#sequences2 contains the fasta mito genomes filtered by length (>500bp)
mashtree_jackknife.pl sequences2/*fasta --outmatrix Out_matrix --reps 100 --numcpus 24 > mitochondrion.tree
