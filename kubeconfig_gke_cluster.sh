#!/bin/bash
source config.sh
gcloud container clusters get-credentials $CLUSTER_NAME
