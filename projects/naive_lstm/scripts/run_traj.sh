python train.py \
  --dataset_name 'univ' \
  --delim 'tab' \
  --loader_num_workers 4 \
  --obs_len 8 \
  --pred_len 12 \
  --skip 1 \
  --batch_size 32 \
  --num_iterations 1000 \
  --num_epochs 500 \
  --embedding_dim 16 \
  --num_layers 1 \
  --dropout 0 \
  --batch_norm 0 \
  --encoder_h_dim_g 32 \
  --decoder_h_dim_g 32 \
  --output_dim 2 \
  --g_learning_rate 1e-3 \
  --g_steps 1 \
  --clip_threshold_g 1.5 \
  --l2_loss_weight 0 \
  --print_every 50 \
  --checkpoint_every 50 \
  --checkpoint_name 'checkpoint_univ' \
  --use_gpu 1 \
  --timing 0 \
  --gpu_num '4'