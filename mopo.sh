#!/bin/bash



# python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "original-entire_d4rl_dataset_1"              --seed 1 --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 1
python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "original-no_overlap_1"                       --num_t 5000 --len_t 20  --latent_reward 0 --bin_label 0 --num_berno 1  --bin_label_trajectory_batch 0 --bin_label_allow_overlap 0 --seed 1 --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0
python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "binary_labels-no_overlap_1"                  --num_t 5000 --len_t 20  --latent_reward 0 --bin_label 1 --num_berno 1  --bin_label_trajectory_batch 0 --bin_label_allow_overlap 0 --seed 1 --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0
python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "latent_reward-no_overlap_1"                  --num_t 5000 --len_t 20  --latent_reward 1 --bin_label 0 --num_berno 1  --bin_label_trajectory_batch 0 --bin_label_allow_overlap 0 --seed 1 --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0