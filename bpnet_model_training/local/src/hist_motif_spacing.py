from pathlib import Path
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sys
from bpnet.modisco.pattern_instances import motif_pair_dfi  # main function for motif spacing

## model directory
model_dir = sys.argv[1]
model_dir_path = Path(model_dir)

## task
task = sys.argv[2]

## pattern names
pattern1_name_long = sys.argv[3]
pattern1_name_short = sys.argv[4]
pattern2_name_long = sys.argv[5]
pattern2_name_short = sys.argv[6]

## length (bp) of hist
interaction_range = int(sys.argv[7])

# load the motif instances for the given task
dfi = pd.read_csv(f'{model_dir}/modisco/{task}/motif-instances.tsv.gz', sep='\t')

# create a table of motif_pairs
if pattern1_name_long == pattern2_name_long:
    dfi_subset = dfi[dfi.pattern == pattern1_name_long]
    dfi_subset['pattern_name'] = pattern1_name_short  # motif_pair_dfi requires `pattern_name` column
else:
    dfi_subset1 = dfi[dfi.pattern == pattern1_name_long]
    dfi_subset2 = dfi[dfi.pattern == pattern2_name_long]
    dfi_subset1['pattern_name'] = pattern1_name_short  # motif_pair_dfi requires `pattern_name` column
    dfi_subset2['pattern_name'] = pattern2_name_short  # motif_pair_dfi requires `pattern_name` column
    dfi_subset = dfi_subset1.append(dfi_subset2)
dfab = motif_pair_dfi(dfi_subset, [pattern1_name_short, pattern2_name_short])

## plot hist
plt.clf()
if interaction_range <= 40:
    plt.figure(figsize=(5,4))
else:
    plt.figure(figsize=(10,4))
plt.hist(dfab[dfab.strand_combination == "++"].center_diff, bins=np.arange(interaction_range)+0.5, color='indigo')
plt.xlabel("Motif distance")
plt.ylabel("Frequency")
plt.savefig(f"{model_dir}/modisco/{task}/motif_spacing/{pattern1_name_short}_vs_{pattern2_name_short}_dist{interaction_range}_hist.svg", bbox_inches = "tight")
