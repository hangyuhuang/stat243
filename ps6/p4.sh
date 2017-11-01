#!/bin/bash
# Job name:
#SBATCH --job-name=problem4
#
# Account:
#SBATCH --account=ic_stat243
#
# Partition:
#SBATCH --partition=savio2
#
#processors per task:
#SBATCH --nodes=1
#
#SBATCH --time=02:00:00
#
## Command(s) to run:
module load r/3.2.5  dplyr/0.4.3 doParallel/1.0.10 foreach/1.4.3
R CMD BATCH --no-save obama.R ps6p4.out
