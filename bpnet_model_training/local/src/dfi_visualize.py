#!/usr/bin/env python3

from bpnet.cli.contrib import ContribFile
from bpnet.plot.tracks import plot_tracks, to_neg
from bpnet.utils import pd_col_prepend
from bpnet.modisco.pattern_instances import dfi2seqlets
from bpnet.modisco.utils import shorten_pattern, longer_pattern
import pandas as pd
import seaborn as sns
from pathlib import Path
import sys

## contrib file path (e.g. /path/to/contrib.deeplift.h5)
model_dir = sys.argv[1]
model_dir_path = Path(model_dir)
contrib_file = model_dir_path/'contrib.deeplift.h5'

## cwm scanning directory where {task}/motif-instances.tsv.gz live 
modisco_dir = model_dir_path / 'modisco' 

## idx and task to be plotted
idx = int(sys.argv[3])

## output file
output_file = sys.argv[2]

## training task list of the model
tasks = sys.argv[4:]

## First load all the motif instances simultaneously
dfi = pd.concat([pd.read_csv(modisco_dir / f'{t}/motif-instances.tsv.gz', sep='\t').assign(tf=t).pipe(pd_col_prepend, ['pattern', 'pattern_short'], prefix=t + "/") for t in tasks], sort=False)

## convert dfi to Seqlet objects
xrange = slice(50, 150)
seqlets = [s.shift(-xrange.start)
        for s in dfi2seqlets(dfi[dfi.example_idx == idx], short_name=True)]


## Visualize the locus with motif instances highlighted

## get the contribution scores and profile score for that example idx
xrange = slice(300, 700)
cf = ContribFile(contrib_file)
profiles = cf.get_profiles(idx=idx)
contrib_scores = cf.get_contrib(idx=idx)

## Let's focus only on the best match per track
dfi_best = dfi[dfi.example_idx == idx].sort_values("match_weighted_p", ascending=False).groupby('tf').first()

seqlets = [s.shift(-xrange.start) 
        for s in dfi2seqlets(dfi_best, short_name=True)]

fig = plot_tracks({**{'profile/' + k: to_neg(v[xrange]) for k,v in profiles.items()},
            **{'contrib/' + k:v[xrange] for k,v in contrib_scores.items()}},
            title=idx,
            rotate_y=0,
            fig_width=20,
            seqlets=[s.set_seqname('contrib/' + s.name.split("/")[0]) for s in seqlets], # plot seqlets to the 'contrib/Nanog' track
            fig_height_per_track=1);
sns.despine(top=True, right=True, bottom=True)
fig.savefig(output_file, bbox_inches = "tight")
