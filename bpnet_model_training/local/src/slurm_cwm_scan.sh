#!/bin/bash
#
#SBATCH -J cwm_scan
#
#SBATCH --output=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_logs/%x_%j.txt
#SBATCH --error=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_errors/%x_%j.txt
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=5:59:59
#SBATCH --mem=20000
#SBATCH --partition=parallel

## MODEL_DIR is the name of the directory in which the contribution scores (.h5) live
MODEL_DIR=XXX_DYNAMIC_MODEL_DIR_XXX

TASKS=XXX_DYNAMIC_TASKS_XXX
TASK_LIST=$(echo ${TASKS} | tr '-' ' ')

MODISCO_DIR=${MODEL_DIR}/modisco

CONTRIB_FILE=${MODEL_DIR}/contrib.deeplift.h5

for task in ${TASK_LIST}; do
    bpnet cwm-scan ${MODISCO_DIR}/${task} ${MODISCO_DIR}/${task}/motif-instances.tsv.gz --contrib-file ${CONTRIB_FILE} --add-profile-features;
done
