for seed in 15 25 35
do
# my_offlinerl_kit
    # combo halfcheetah M
    python run_example/run_combo.py --task "halfcheetah-medium-v2"        --log_dir_name "original_$seed"                       --num_t 24960 --len_t 20  --latent_reward 0 --bin_label 0 --seed $seed --rollout-length 5 --cql-weight 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1
    python run_example/run_combo.py --task "halfcheetah-medium-v2"        --log_dir_name "binary_labels_$seed"                  --num_t 24960 --len_t 20  --latent_reward 0 --bin_label 1 --seed $seed --rollout-length 5 --cql-weight 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1
    python run_example/run_combo.py --task "halfcheetah-medium-v2"        --log_dir_name "latent_reward_$seed"                  --num_t 24960 --len_t 20  --latent_reward 1 --bin_label 0 --seed $seed --rollout-length 5 --cql-weight 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1

    # mopo halfcheetah MR
    python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "original_$seed"                 --num_t 5000  --len_t 20  --latent_reward 0 --bin_label 0 --seed $seed --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1
    python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "latent_reward_$seed"            --num_t 5000  --len_t 20  --latent_reward 1 --bin_label 0 --seed $seed --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1
    python run_example/run_mopo.py --task "halfcheetah-medium-replay-v2"        --log_dir_name "binary_labels_$seed"            --num_t 5000  --len_t 20  --latent_reward 0 --bin_label 1 --seed $seed --rollout-length 5 --penalty-coef 0.5 --use_original_dataset 0 --bin_label_allow_overlap 1

    # combo halfcheetah ME
    python run_example/run_combo.py --task "halfcheetah-medium-expert-v2"        --log_dir_name "original_$seed"                       --num_t 49920 --len_t 20  --latent_reward 0 --bin_label 0 --seed $seed --rollout-length 5 --cql-weight 5.0 --use_original_dataset 0
    python run_example/run_combo.py --task "halfcheetah-medium-expert-v2"        --log_dir_name "binary_labels_$seed"                  --num_t 49920 --len_t 20  --latent_reward 0 --bin_label 1 --seed $seed --rollout-length 5 --cql-weight 5.0 --use_original_dataset 0
    python run_example/run_combo.py --task "halfcheetah-medium-expert-v2"        --log_dir_name "latent_reward_$seed"                  --num_t 49920 --len_t 20  --latent_reward 1 --bin_label 0 --seed $seed --rollout-length 5 --cql-weight 5.0 --use_original_dataset 0
done

# pay attention to the seeds in log_dir_name