#!/bin/bash
source config.sh
gcloud container clusters delete $CLUSTER_NAME --quiet
