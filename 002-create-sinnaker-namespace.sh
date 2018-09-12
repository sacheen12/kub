#!/bin/bash

# kubectl create namespace spinnaker

cat <<EOF | kubectl create -f -
apiVersion: v1
kind: Namespace
metadata:
  creationTimestamp: null
  name: spinnaker
spec: {}
status: {}
EOF
