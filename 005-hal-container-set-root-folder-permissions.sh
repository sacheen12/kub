#!/bin/bash

POD=$(kubectl get pod -l app=hal -o jsonpath="{.items[0].metadata.name}")

chown -R root:spinnaker /root
chmod -R 775 /root/
