#!/usr/bin/env bash

########################################
#########Kristina Gagalova##############
############Mar 21 2017#################
########################################

python /home/kgagalova/src/OrthoFinder_source-2.3.1/OrthoFinder-2.3.1_source/orthofinder/orthofinder.py \
        -a 16 \
        -f /projects/spruceup_scratch/dev/SprucePaper2018/GeneFamilies/OrthofinderFinalRuns/Dec2019/ConifersPaper/Species \
        -M msa \
        -n Out_7Paper \
        -S diamond
