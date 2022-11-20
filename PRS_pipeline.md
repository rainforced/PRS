1. GenSim.sh -> 100k patients
2. run_PhenSim.sh -> starts PhenSim_OneTrait_V3.R in bash ... (and logs the output)
3. plink to vcf
4. python script
5. merge genotype and phenotype 
   1. make sure pheno.txt has columns "FID IID pheno" (pheno can be named differently)
   2. Use P1, P2 etc notation for patients
   3. use 1 and 2 coding for phenotype instead of 0 and 1
6. run gwas 
7. ...
8. PROFIT