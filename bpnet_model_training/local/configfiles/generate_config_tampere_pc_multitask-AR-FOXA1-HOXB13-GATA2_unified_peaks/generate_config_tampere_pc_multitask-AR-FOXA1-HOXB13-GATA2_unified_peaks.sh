for sample in $(cat sample_list.txt); do
    cat config_tampere_pc_multitask-AR-FOXA1-HOXB13-GATA2_unified_peaks.yml | sed "s/XXX_SAMPLE_XXX/${sample}/g;" \
    >> ../config_tampere_pc_multitask-AR-FOXA1-HOXB13-GATA2_unified_peaks.yml;
done;
