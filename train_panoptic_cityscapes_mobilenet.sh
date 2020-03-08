python train_panoptic.py \
--backbone mobilenet_3stage \
--lr 0.006 \
--workers 8 \
--epochs 100 \
--batch-size 2 \
--checkname panoptic-deeplab-mobilenet-21 \
--eval-interval 1 \
--task panoptic \
--resume /home/tjosh/codes/pytorch-deeplab-xception/run/cityscapes/panoptic-deeplab-mobilenet-21/model_best.pth.tar \
--dataset cityscapes


# --checkname panoptic-deeplab-mobilenet-dsc-1 \

# --resume ./run/pascal/panoptic-deeplab-mobilenet/model_best.pth.tar

# --resume deeplab-mobilenet.pth.tar
# --ft # must be used with --resume
# CUDA_VISIBLE_DEVICES=0,1,2,3
# --gpu-ids 0,1,2,3 \

# to run single scripts, add root directory to python path
# export PYTHONPATH=~/codes/pytorch-deeplab-xception/:$PYTHONPATH

# tr -d '\r' < train_panoptic_voc_mobilenet.sh > train_panoptic_voc_mobilenet.sh


# wget --keep-session-cookies --save-cookies=cookies.txt --post-data 'username=YOUR_EMAIL&password=YOUR_PASSWORD&submit=Login' https://www.cityscapes-dataset.com/login/; history -d $((HISTCMD-1))

# wget --load-cookies cookies.txt --content-disposition https://www.cityscapes-dataset.com/file-handling/?packageID=PACKAGE_ID