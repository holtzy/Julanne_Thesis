
This file gives the code I used to extract UKB data for Julanne.


------------
The full UKB dataset is here:
ls /references/UKBiobank/pheno/download/9280_12505_UKBiobank.tab.gz 

The folder created for Julanne is here:
cd /ibscratch/wrayvisscher/Yan_Holtz/6_JULANNE_THESIS

- Note: to make a one liner from the excel column. WARNING I have to add 1 to each field
more temp | sed '/^$/d' | awk '{print $1+1}' | tr "\n" ","


-----------
First dataset - 6/9/2017
zcat /references/UKBiobank/pheno/download/9280_12505_UKBiobank.tab.gz | cut -f1,2529,2530,2531,3587,2544,2545,2546,2532,2533,2534,163,164,166,167,169,170,171,3452,3453,3454,784,4059,3570,3589,3568,3569,4064,4065,4081,4075,4076,4077,4066,4067,4068,4087,25,9,8,4083,26,27,28,3429,3430,3431,3432,3433,3434,3435,150,151,152,4069,4070,4071,3439,3440,3441,3438,7064,8487,8488,8489,8490,8491,8492,8493,8494,8495,8496,8497,8498,8499,8500,8501,6008,6009,6010,5896,5897,5898,5899,5900,5901 > /clusterdata/uqyholtz/6_JULANNE_THESIS/UKB_Julanne_6_9_2017_full.txt
cd /clusterdata/uqyholtz/6_JULANNE_THESIS/
head -1 UKB_Julanne_6_9_2017_full.txt > UKB_Julanne_6_9_2017_abstract.txt
shuf -n 50000 UKB_Julanne_6_9_2017_full.txt >> UKB_Julanne_6_9_2017_abstract.txt
scp  uqyholtz@cluster.qbi.uq.edu.au:/clusterdata/uqyholtz/6_JULANNE_THESIS/UKB_Julanne_6_9_2017_abstract.txt.gz .




-----------
Second dataset - 11/10/2017 - Add the height
cd /ibscratch/wrayvisscher/Yan_Holtz/6_JULANNE_THESIS
zcat /references/UKBiobank/pheno/download/9280_12505_UKBiobank.tab.gz | cut -f1,22,23,24,2529,2530,2531,3587,2544,2545,2546,2532,2533,2534,163,164,166,167,169,170,171,3452,3453,3454,784,4059,3570,3589,3568,3569,4064,4065,4081,4075,4076,4077,4066,4067,4068,4087,25,9,8,4083,26,27,28,3429,3430,3431,3432,3433,3434,3435,150,151,152,4069,4070,4071,3439,3440,3441,3438,7064,8487,8488,8489,8490,8491,8492,8493,8494,8495,8496,8497,8498,8499,8500,8501,6008,6009,6010,5896,5897,5898,5899,5900,5901 > /ibscratch/wrayvisscher/Yan_Holtz/6_JULANNE_THESIS/UKB_Julanne_11_10_2017_full.txt
head -1 UKB_Julanne_11_10_2017_full.txt > UKB_Julanne_11_10_2017_abstract.txt
shuf -n 50000 UKB_Julanne_11_10_2017_full.txt >> UKB_Julanne_11_10_2017_abstract.txt
gzip UKB_Julanne_11_10_2017_abstract.txt
scp  uqyholtz@cluster.qbi.uq.edu.au:/ibscratch/wrayvisscher/Yan_Holtz/6_JULANNE_THESIS/UKB_Julanne_11_10_2017_abstract.txt.gz .


















