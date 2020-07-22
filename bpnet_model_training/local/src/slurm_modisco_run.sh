#!/bin/bash
#
#SBATCH -J modisco_run
#
#SBATCH --output=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_logs/%x_%j.txt
#SBATCH --error=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_errors/%x_%j.txt
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=7:59:59
#SBATCH --mem=128000
#SBATCH --partition=normal

## MODEL_DIR is the name of the directory in which the contribution scores (.h5) live
MODEL_DIR=XXX_DYNAMIC_MODEL_DIR_XXX

TASKS=XXX_DYNAMIC_TASKS_XXX
TASKS=$(echo $TASKS | sed 's/MULTITASK-//g')
TASK_LIST=$(echo ${TASKS} | tr '-' ' ')

CONTRIB_FILE=${MODEL_DIR}/contrib.deeplift.h5
CONTRIB_NULL_FILE=${MODEL_DIR}/contrib.deeplift.null.h5

MODISCO_DIR=${MODEL_DIR}/modisco

source ../../miniconda3/bin/activate ../../miniconda3/envs/bpnet_training

for task in ${TASK_LIST}; do
    echo -e "\n>>>\n\tTASK: ${task}\n>>>\n"
    echo -e "\n>>>\n\tTASK: ${task}\n>>>\n" >&2
    bpnet modisco-run ${CONTRIB_FILE} --null-contrib-file=${CONTRIB_NULL_FILE} --override='TfModiscoWorkflow.min_metacluster_size = 1000' --contrib-wildcard=${task}/profile/wn --only-task-regions --premade=modisco-50k ${MODISCO_DIR}/${task}/ --overwrite;
    #bpnet modisco-run ${CONTRIB_FILE} --null-contrib-file=${CONTRIB_NULL_FILE} --override='TfModiscoWorkflow.min_metacluster_size = 1000' --contrib-wildcard=${task}/profile/wn --premade=modisco-50k ${MODISCO_DIR}/${task}/ --overwrite;
done
