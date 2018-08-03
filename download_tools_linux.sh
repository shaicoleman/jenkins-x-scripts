#!/bin/bash
cd /tmp

curl -sL https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz | tar xzv
sudo mv linux-amd64/helm /usr/local/bin

curl -sL https://github.com/jenkins-x/jx/releases/download/v1.3.145/jx-linux-amd64.tar.gz | tar xzv
sudo mv jx /usr/local/bin

curl -sL https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 -o skaffold &&
chmod +x skaffold &&
sudo mv skaffold /usr/local/bin

curl -sL https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip -o terraform.zip &&
unzip terraform.zip &&
sudo mv terraform /usr/local/bin
