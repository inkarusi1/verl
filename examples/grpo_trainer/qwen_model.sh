#!/bin/bash

export TENSORBOARD_DIR=/root/autodl-tmp/tensorboard_log/verl_test_p1

# Load configuration from the same directory as this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
python3 -m verl.trainer.main_ppo \
  --config-path="$SCRIPT_DIR" \
  --config-name=config_qwen2.5_0.5b