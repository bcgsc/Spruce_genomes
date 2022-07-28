#!/usr/bin/bash


#*********************************************************
#*                                                       *
#*      STAG: Species Tree inference from All Genes      *
#*                                                       *
#*********************************************************

#usage: stag.py [-h] [-q] [-a ASTRAL_JAR] species_map gene_trees

#positional arguments:
#  species_map           Map file from gene names to species names, or
#                        SpeciesIDs.txt file from OrthoFinder
#  gene_trees            Directory conaining gene trees

#optional arguments:
#  -h, --help            show this help message and exit
#  -q, --quiet           Only print sparse output
#  -a ASTRAL_JAR, --astral_jar ASTRAL_JAR
#                        ASTRAL jar file. Use ASTRAL to combine STAG species
#                        tree estimates instead of greedy consensus tree.


stag_script=/home/kgagalova/src/STAG_1.0.0/stag
astral_jar=/home/kgagalova/src/Astral/astral.5.6.3.jar

./stag -a /home/kgagalova/src/Astral/astral.5.6.3.jar SpeciesIDs.txt Gene_Trees/

python ./stride.py -S STAG_ResultsFeb11_1/SpeciesTree.tre -d Gene_Trees

/home/kgagalova/src/OrthoFinder_sourceFeb2020/tools/make_ultrametric.py --root 140 STRIDE_ResultsFeb11/Species_tree_labelled.tre
