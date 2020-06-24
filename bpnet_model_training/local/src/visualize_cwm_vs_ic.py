from pathlib import Path
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sys
from bpnet.modisco.files import ModiscoFile
from bpnet.modisco.pattern_instances import motif_pair_dfi  # main function for motif spacing

## model directory
model_dir = sys.argv[1]

## task
task = sys.argv[2]

## pattern names
pattern_name_long = sys.argv[3]
pattern_name_short = sys.argv[4]

model_dir_path = Path(model_dir)

# load the motif instances
dfi = pd.read_csv(f'{model_dir}/modisco/{task}/motif-instances.tsv.gz', sep='\t')

# visualize spacing
mf = ModiscoFile(f'{model_dir}/modisco/{task}/modisco.h5')
p = mf.get_pattern(f'{pattern_name_long}')
fig = p.plot(['seq_ic', "contrib"], rotate_y=0)
Path(f"{model_dir}/modisco/{task}/motif_cwm_vs_ic/").mkdir(parents=True, exist_ok=True)
fig.savefig(f"{model_dir}/modisco/{task}/motif_cwm_vs_ic/{pattern_name_short}.svg", bbox_inches = "tight")
