#!/bin/bash
kops create cluster \
    --cloud=aws \
    --name=$NAME \
    --node-count=$NODE_COUNT \
    --node-size=$NODE_SIZE \
    --node-volume-size=$NODE_VOLUME_SIZE \
    --master-count=$MASTER_COUNT \
    --master-size=$MASTER_SIZE \
    --master-volume-size=$MASTER_VOLUME_SIZE \
    --zones=$ZONES \
    --state=$KOPS_STATE_STORE \
    --dns=public \
    --dns-zone=example.ullagallu.online \
    --networking=calico