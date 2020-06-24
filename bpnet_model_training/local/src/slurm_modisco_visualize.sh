#!/bin/bash
#
#SBATCH -J modisco_visualize
#
#SBATCH --output=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_logs/%x_%j.txt
#SBATCH --error=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_errors/%x_%j.txt
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=3:59:59
#SBATCH --mem=10000
#SBATCH --partition=test

## MODEL_DIR is the name of the directory in which the contribution scores (.h5) live
MODEL_DIR=XXX_DYNAMIC_MODEL_DIR_XXX

TASKS=XXX_DYNAMIC_TASKS_XXX
TASK_LIST=$(echo ${TASKS} | tr '-' ' ')

source /lustre/bmt-data/genomics/projects/lussana/miniconda3/bin/activate bpnet_training

python ../local/src/modisco_visualize.py $MODEL_DIR $TASK_LIST
