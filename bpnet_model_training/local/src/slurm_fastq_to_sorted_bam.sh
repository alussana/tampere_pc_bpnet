#!/bin/bash
#
#SBATCH -J bowtie_SRA012454_XXX_DYNAMIC_SAMPLE_XXX
#
#SBATCH --output=XXX_DYNAMIC_OUTPUT_DIR_XXX/slurm_logs/%x_%j.log
#SBATCH --error=XXX_DYNAMIC_OUTPUT_DIR_XXX/slurm_errors/%x_%j.log
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=3:59:59
#SBATCH --mem=20000
#SBATCH --partition=test

SAMPLE=XXX_DYNAMIC_SAMPLE_XXX
OUTPUT_DIR=XXX_DYNAMIC_OUTPUT_DIR_XXX
FASTQ=XXX_DYNAMIC_RUN_NAMES_XXX
REF=XXX_DYNAMIC_REF_XXX

BAM=${OUTPUT_DIR}/${SAMPLE}.bam

echo -e "#########################"
echo -e "\tFASTQ: ${FASTQ}"
echo -e "#########################"

source /lustre/bmt-data/genomics/projects/lussana/miniconda3/bin/activate bpnet_model_training

bowtie2 \
        --very-sensitive \
        --threads 8 \
        -x ${REF} \
        -U ${FASTQ} \
        --no-unal \
        2> ${OUTPUT_DIR}/bowtie_logs/${SAMPLE}.log \
    | samtools view -@8 -u -b - \
    | samtools sort > ${BAM}
