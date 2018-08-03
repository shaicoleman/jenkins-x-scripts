#!/bin/bash
# attempt to implement of the steps in https://github.com/jenkins-x/jx-docs/issues/259#issuecomment-401319331
helm install stable/cert-manager --name letsencrypt --namespace kube-system \
  --set extraArgs="{-v=5}",ingressShim.defaultIssuerName=letsencrypt-staging,ingressShim.defaultIssuerKind=ClusterIssuer
kubectl apply -f cluster-issuer.yaml
kubectl apply -f certificate.yaml
kubectl patch service jenkins --patch "$(cat jenkins-service-patch.yaml)"
