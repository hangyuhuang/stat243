#!/bin/bash
# Job name:
#SBATCH --job-name=test
#
# Account:
#SBATCH --account=ic_stat243
#
# Partition:
#SBATCH --partition=savio
#
# Wall clock limit (30 seconds here):
#SBATCH --time=02:00:00
#
# processers per task:
#SBATCH --nodes=1
#
## Command(s) to run:
module load r/3.2.5 dplyr/0.4.3 doParallel/1.0.10 foreach/1.4.3
R CMD BATCH --no-save obama.R ps6_p4.out