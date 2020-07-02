for sample in $(cat sample_list.txt);
do
    cat SAMPLE_GLOBAL_ATAC-profile.yml | sed "s/XXX_SAMPLE_NAME_XXX/${sample}/g; s/XXX_TASK_NAME_XXX/GLOBAL/g" > ${sample}_GLOBAL_ATAC-profile.yml;
done;
