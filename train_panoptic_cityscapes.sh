python train_panoptic.py \
--backbone mobilenet_3stage \
--lr 0.01 \
--lr-scheduler step \
--lr-step 50 \
--epochs 200 \
--batch-size 2 \
--checkname panoptic-deeplab-mobilenet-final-add-road \
--eval-interval 1 \
--task panoptic \
--resume /home/tjosh/codes/pytorch-deeplab-xception/run/cityscapes/panoptic-deeplab-mobilenet-final/model_best.pth.tar \
--dataset cityscapes