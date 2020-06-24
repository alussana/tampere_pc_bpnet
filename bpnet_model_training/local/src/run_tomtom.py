#!/usr/bin/env python3

from bpnet.modisco.files import ModiscoFile
import pandas as pd
from pathlib import Path
import sys
import os

model_dir = sys.argv[1]
model_dir_path = Path(model_dir)
modisco_dir = model_dir_path/'modisco'

tasks = sys.argv[2:]

for task in tasks:
    tomtom_dir = modisco_dir/task/'tomtom'
    tomtom_dir.mkdir(parents=True, exist_ok=True)
    modisco_file = modisco_dir/task/'modisco.h5'
    mf = ModiscoFile(modisco_file)
    for pattern_name in mf.pattern_names():
        pattern = mf.get_pattern(pattern_name)
        matches = pattern.fetch_tomtom_matches(motifs_db='./../local/meme_db/HOCOMOCOv11_full_HUMAN_mono_meme_format.meme')
        matches_df = pd.DataFrame(columns=['Target ID','p-value','E-value','q-value'])
        i = 0
        for match in matches:
            new_row = pd.DataFrame(match, index=[i])
            matches_df = pd.concat([matches_df, new_row])
            i = i + 1
        pattern_name = pattern_name.replace('/', '_')
        matches_df.to_csv(tomtom_dir / f'{pattern_name}.tsv', sep='\t')
