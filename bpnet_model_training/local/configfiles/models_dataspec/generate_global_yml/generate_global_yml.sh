for sample in $(cat sample_list.txt);
do
    cat SAMPLE_GLOBAL_ATAC-UniBindPWM.yml | sed "s/XXX_SAMPLE_NAME_XXX/${sample}/g; s/XXX_TASK_NAME_XXX/GLOBAL/g" > ${sample}_GLOBAL_ATAC-UniBindPWM.yml;
done;
