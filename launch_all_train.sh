#!/bin/bash
accelerate launch --gpu_ids 0,1 sdxl_train_network.py --dataset_config="dataset1.toml" --config_file="config1.toml" --flow_model  --flow_use_ot  --flow_timestep_distribution uniform --flow_uniform_static_ratio 2.5 --vae_custom_scale 0.1406 --vae_custom_shift -0.4743 --contrastive_flow_matching --cfm_lambda 0.05
echo "All training jobs finished. Press any key to close..."
read -n 1 -s -r -p ""
