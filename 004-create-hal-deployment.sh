#!/bin/bash

# kubectl create deployment hal --image gcr.io/spinnaker-marketplace/halyard:stable

cat <<EOF | kubectl create -f -
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: hal
  name: hal
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hal
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: hal
    spec:
      containers:
      - image: gcr.io/spinnaker-marketplace/halyard:stable
        name: halyard
        resources: {}
status: {}
EOF
