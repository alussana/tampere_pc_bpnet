#!/usr/bin/env python3

import seaborn as sns
from bpnet.cli.contrib import ContribFile
from bpnet.plot.tracks import plot_tracks, to_neg
import seaborn as sns
import matplotlib.pyplot as plt
from pathlib import Path
import os
import sys

model_dir = sys.argv[1]
model_dir_path = Path(model_dir)
contrib_file = model_dir_path/'contrib.deeplift.h5'

seq_length = int(sys.argv[2])

## ContribFile class is used to explore contrib_file, that is in HDF5 format
cf = ContribFile(contrib_file)

## get chip-nexus profiles and contribution scores from the ContribFile
profiles = cf.get_profiles()
contrib_scores = cf.get_contrib()

## get example idx with most read counts for each task
## get only the first
#examples = list({v.max(axis=-2).mean(axis=-1).argmax() for k,v in profiles.items()})
## get the first 5
examples = []
for task in profiles.keys():
    examples = examples + list(profiles[task].max(axis=-2).mean(axis=-1).argsort()[-5:][::-1])

## create directory for plots
plots_dir = Path(model_dir_path / "contrib_plots")
plots_dir.mkdir(parents=True, exist_ok=True)

## display those idx
## set coordinates based on sequence length
m = int(seq_length / 2)
if m >= 200:
    l = m - 200
    r = m + 200
else:
    l = 0
    r = m
xrange = slice(l, r)
for idx in examples:
  fig = plot_tracks({**{'profile/' + k: to_neg(v[idx,xrange]) for k,v in profiles.items()},
               **{'contrib/' + k:v[idx,xrange] for k,v in contrib_scores.items()}},
             title=idx,
             rotate_y=0,
             fig_width=25,
             fig_height_per_track=1);
  sns.despine(top=True, right=True, bottom=True)
  fig.savefig(plots_dir / f"{idx}.svg", bbox_inches = "tight")

## Export BigWig files containing contribution scores and model predictions
# scale-contribution will multiply the contribution scores with total count predictions
# this will ensure that regions without high counts won't get high contribution scores
command = f"bpnet export-bw {model_dir_path} {model_dir_path}/bigwigs/ --contrib-method=deeplift --scale-contribution"
os.system(command)
