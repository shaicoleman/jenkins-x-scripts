#!/bin/bash
source config.sh
jx uninstall --batch-mode -y
helm list --all --short | xargs -L1 helm delete --purge
helm reset
rm -rf ~/.jx ~/.helm
