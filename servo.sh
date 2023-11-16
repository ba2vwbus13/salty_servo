#!/usr/bin/env bash
NET="/jetson-inference/python/training/classification/models/ball"
DATASET="/jetson-inference/python/training/classification/data/ball"

./imagenet.py --model=$NET/resnet18.onnx --input_blob=input_0 \
--output_blob=output_0 --labels=$DATASET/labels.txt /dev/video0
