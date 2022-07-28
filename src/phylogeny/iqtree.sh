#!/usr/bin/bash

#Species_treeCorr.tree contains the species tree from STAG - ASTRAL with corrected terminal branches (unitary)
#Script - https://github.com/smirarab/global/blob/master/src/mirphyl/utils/add-bl.py

iqtree -s SingleCopy_concat.fasta -st AA -te Species_treeCorr.tree -nt 48 --mem 60% -pre concateDef
