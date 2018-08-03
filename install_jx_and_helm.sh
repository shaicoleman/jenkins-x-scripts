#!/bin/bash
# --http=false --tls-acme=true should enable TLS, but that's not working at the moment
# https://github.com/jenkins-x/jx/issues/1232
source config.sh
jx create git token $GITHUB_USERNAME --api-token=$GITHUB_TOKEN
jx install --provider=gke --namespace=$NAMESPACE \
  --default-admin-password=$JENKINS_ADMIN_PASSWORD --verbose --batch-mode --tls-acme=false --http=true
