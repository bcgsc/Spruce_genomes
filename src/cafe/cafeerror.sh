#!/home/kgagalova/src/CAFE/release/cafe
tree ((Plambertiana:62.5713,Ptaeda:62.5713):53.4287,(Pabies:33.307,(Psitchensis:19.3606,(Pengelmannii:16.4684,(Interior:12.1272,Pglauca:12.1272):4.34121):2.89218):13.9464):82.693);
load -i Orthogroups.GeneCountFilt.tsv -t 10 -l reports/run3_caferror_files/cafe_final_log.txt
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Ptaeda
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Plambertiana
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Psitchensis
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Pengelmannii
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Pglauca
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Pabies
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -sp Interior
lambda -s ((1,1)1,(((((1,1)1,1)1,1)1)1,1)
report reports/run3_caferror_files/cafe_final_report
