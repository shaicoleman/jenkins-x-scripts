#!/bin/bash
source config.sh
gcloud container clusters create $CLUSTER_NAME --disk-size=$DISK_SIZE --machine-type=$MACHINE_TYPE \
  --enable-autoscaling  \
  --min-nodes=$MIN_NUM_NODES --max-nodes=$MAX_NUM_NODES --num-nodes=$MIN_NUM_NODES \
  --zone=$ZONE --scopes=gke-default --preemptible
source kubeconfig_gke_cluster.sh
