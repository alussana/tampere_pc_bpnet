from bpnet.modisco.files import ModiscoFile
import pandas as pd
from pathlib import Path
import sys

model_dir = sys.argv[1]
model_dir_path = Path(model_dir)
modisco_dir = model_dir_path / 'modisco'

tasks = sys.argv[2:]

mf = ModiscoFile(modisco_file)

# export pssm for all tasks
for task in tasks:
    modisco_task_dir = modisco_dir / task
    modisco_file = modisco_task_dir / 'modisco.h5'
    mf = ModiscoFile(modisco_file)
    for i in range(0, len(mf.pattern_names())):
        pattern_name = mf.pattern_names()[i]
        pssm = mf.get_pssm(pattern_name)
        pssm = pd.DataFrame(pssm)
        pssm.to_csv(f'{modisco_task_dir}/{pattern_name}.tsv', sep='\t', index=False, header=False)
