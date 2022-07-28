#!cafe

load -i large_Orthogroups.GeneCountFilt.tsv -t 12 -l reports/log_run2.txt
tree ((Plambertiana:62.5713,Ptaeda:62.5713):53.4287,(Pabies:33.307,(Psitchensis:19.3606,(Pengelmannii:16.4684,(Interior:12.1272,Pglauca:12.1272):4.34121):2.89218):13.9464):82.693);
lambda -l 0.01080107051637
report reports/report_LargeGeneFam
