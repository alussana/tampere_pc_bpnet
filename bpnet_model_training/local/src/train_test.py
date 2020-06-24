#!/usr/bin/env python3

import uuid
import datetime
from pathlib import Path
import os
import sys

##################
### File paths ###

exp_dir = sys.argv[1]
exp_dir = Path(exp_dir)

dataspec = sys.argv[2]
dataspec = Path(dataspec)

configgin = sys.argv[3]
configgin = Path(configgin)

#########################
### Samples and Tasks ###

samples = sys.argv[5]
tasks = sys.argv[6]

#############
### WandB ###

import wandb
wandb.init(project='bpnet_on_chip_seq', entity='alussana', dir=str(exp_dir))

##############
### Run ID ###

slurm_job_id = sys.argv[4]
run_id = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S") + "_" + \
	 slurm_job_id + '_toy_' + samples + "_" + tasks

#######################
### Run bpnet train ###

command = f"bpnet train {dataspec} {exp_dir}\
                --premade=bpnet9 \
                --config=\"{configgin}\" \
                --run-id '{run_id}'\
                --num-workers 8 \
                --wandb=alussana/bpnet_on_chip_seq \
                --in-memory \
                --vmtouch"

## run
os.system(command)

## create symlink of the model
model_dir = exp_dir/run_id
if os.path.exists(exp_dir/'seq_model.pkl'):
    os.remove(exp_dir/'seq_model.pkl')
os.symlink(f'{run_id}/seq_model.pkl', exp_dir/'seq_model.pkl')
