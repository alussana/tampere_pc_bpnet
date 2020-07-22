for sample in $(cat sample_list.txt); do
    cat config_tampere_pc_global_peaks_template.yml | sed "s/XXX_SAMPLE_XXX/${sample}/g;"  >> ../config_tampere_pc_global_unified_peaks.yml;
done;
