export CUDA_VISIBLE_DEVICES=0,1,2,3
python3 -m paddle.distributed.launch --log_dir ./mylog.v1 train.py --use_data_parallel 1 --batch_size=256     --total_images=1281167    --class_dim=1000 --image_shape=3,224,224 --lr_strategy=piecewise_decay --lr=0.1   --data_dir=./data/ILSVRC2012 --l2_decay=3e-5  --model=MobileNetV1  --model_save_dir=output.v1.mul/ --num_epochs=120 
