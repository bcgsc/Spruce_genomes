#!/home/kgagalova/src/CAFE/release/cafe

load -i Orthogroups.GeneCountFilt.tsv -t 4 -l reports/log_run3error.txt
tree ((Plambertiana:62.5713,Ptaeda:62.5713):53.4287,(Pabies:33.307,(Psitchensis:19.3606,(Pengelmannii:16.4684,(Interior:12.1272,Pglauca:12.1272):4.34121):2.89218):13.9464):82.693);
errormodel -model reports/run3_caferror_files/cafe_errormodel_0.184423828125.txt -all
lambda -s
report reports/report_run3Error
