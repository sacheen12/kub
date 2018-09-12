#!/bin/bash

# kubectl -n kube-system create sa tiller
# kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller

cat <<EOF | kubectl create -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  creationTimestamp: null
  name: tiller
  namespace: kube-system
EOF

cat <<EOF | kubectl create -f -
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  creationTimestamp: null
  name: tiller
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: tiller
  namespace: kube-system
EOF
