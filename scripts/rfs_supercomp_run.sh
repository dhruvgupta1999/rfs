#!/bin/sh
#SBATCH -N 1
#SBATCH --job-name=rfs
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out
#SBATCH --partition=gpu
#SBATCH --gres=gpu:2
module load cuda/11.1
module load conda
conda run -n rfs_latest_packages python ../train_supervised.py --trial pretrain --model_path ./saved_model --tb_path ./mytensorboard --data_root /home/dhruv.gupta.cse17.iitbhu/datasets --dataset FC100
