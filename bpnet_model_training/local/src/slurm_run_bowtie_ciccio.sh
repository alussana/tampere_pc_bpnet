#!/bin/bash
#
#SBATCH --partition=parallel
#SBATCH --job-name=align
#SBATCH --output=/scratch/ft413468/BTK6004/ex5/log/slurm-%x-%j.log
#SBATCH --error=/scratch/ft413468/BTK6004/ex5/log/slurm-%x-%j.log
#SBATCH --ntasks=1
#SBATCH --time=3-00:00:00
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=4
#SBATCH --array=1-6
#SBATCH --oversubscribe
#SBATCH --distribution=cyclic
#SBATCH --constraint="haswell"

ALIGNMENTS_FOLDER="/scratch/ft413468/BTK6004/ex5/alignments"

f1=$(find /scratch/ft413468/BTK6004/ex5/trimmed -name '*_1.fq.gz' |sed -n "${SLURM_ARRAY_TASK_ID}p")
f2=${f1/_1_val_1/_2_val_2}

bam=$(basename $f1)
bam="$ALIGNMENTS_FOLDER/${bam/_1_val_1.fq.gz/_sorted.bam}"
bam_markdup=${bam/.bam/_markdup.bam}

bowtie_log=${bam/_sorted.bam/_bowtie.log}
markdup_log=${bam/_sorted.bam/_markdup.log}

module purge
module load compbio/bowtie2
module load compbio/samtools
module load compbio/picard

bowtie2 --very-sensitive -p4 -x /bmt-data/genomics/reference/bowtie2_hg38_index/hg38 -1 $f1 -2 $f2 2> $bowtie_log \
    | samtools view -@4 -u - \
    | samtools sort -@4 -o $bam \
    && picard MarkDuplicates I=$bam O=$bam_markdup ASO=coordinate M=$markdup_log \
    && samtools index $bam_markdup \
    && rm $bam
