#!/usr/bin/bash

###########################################

shell_cafe=$1

###Run CAFE
/home/kgagalova/src/CAFE/release/cafe shell_wholeTree_cafeError${shell_cafe}.sh
python ../../python_scripts/cafetutorial_report_analysis.py -i reports/report_run${shell_cafe}.cafe -o reports/summary_run${shell_cafe}

#######################################################################
#for large gene families
/home/kgagalova/src/CAFE/release/cafe shell_LargeFamilies_cafe1.sh
python ../../python_scripts/cafetutorial_report_analysis.py -i reports/report_LargeGeneFam.cafe -o reports/report_LargeGeneFam

#correct for error
python ../../python_scripts/caferror.py -i shell_wholeTree_cafeError1.sh -d reports/run3_caferror_files -v 0 -f 1

/home/kgagalova/src/CAFE/release/cafe shell_wholeTreeErrorCorr_cafe3.sh
python ../../python_scripts/cafetutorial_report_analysis.py -i reports/report_run3Error.cafe -o reports/summary_run3
python ../../../../python_scripts/cafetutorial_draw_tree.py -o reports/summary_run3_tree_rapid.png -y Rapid -i reports/summary_run3_node.txt -d '((plambertiana<0>,ptaeda<2>)<1>,(((WS77111<4>,PG29<6>)<5>,Q903<8>)<7>,pabies<10>)<9>)<3>' -t '((plambertiana:84.989322,ptaeda:84.989322):55.010678,(((WS77111:17.358173,PG29:17.358173):5.626297,Q903:22.984470):16.691297,pabies:39.675767):100.324233);'
