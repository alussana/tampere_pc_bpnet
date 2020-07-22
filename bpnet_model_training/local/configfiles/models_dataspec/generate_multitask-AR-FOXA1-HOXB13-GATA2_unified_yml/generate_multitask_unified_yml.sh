for sample in $(cat sample_list.txt);
do
    cat XXX_SAMPLE_XXX_MULTITASK-AR-FOXA1-HOXB13-GATA2_ATAC-UniBindPWM.yml | sed "s/XXX_SAMPLE_XXX/${sample}/g;" > ../${sample}_MULTITASK-AR-FOXA1-HOXB13-GATA2_ATAC-UniBindPWM.yml;
done;
