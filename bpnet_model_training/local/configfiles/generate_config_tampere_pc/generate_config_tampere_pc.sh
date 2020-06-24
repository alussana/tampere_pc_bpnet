for task in $(cat task_list.txt); do
    for sample in $(cat sample_list.txt); do
        cat config_tampere_pc_template.yml | sed "s/XXX_SAMPLE_XXX/${sample}/g; s/XXX_TASK_XXX/${task}/g" \
        >> ../config_tampere_pc.yml;
    done;
done
