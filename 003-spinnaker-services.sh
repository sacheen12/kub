#!/bin/bash

cat <<EOF | kubectl create -f -
apiVersion: v1
kind: Service
metadata:
  namespace: spinnaker
  labels:
    app: spin
    stack: gate
  name: spin-gate-np
spec:
  type: LoadBalancer
  ports:
  - name: http
    port: 8084
    protocol: TCP
  selector:
    load-balancer-spin-gate: "true"
---
apiVersion: v1
kind: Service
metadata:
  namespace: spinnaker
  labels:
    app: spin
    stack: deck
  name: spin-deck-np
spec:
  type: LoadBalancer
  ports:
  - name: http
    port: 9000
    protocol: TCP
  selector:
    load-balancer-spin-deck: "true"
EOF
