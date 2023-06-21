#!/bin/bash
set -o xtrace
SERVICE=${1:-searchsync}
PARAMS=$2
PODS=( $(kubectl get pods --all-namespaces | grep $SERVICE | tr -s ' ' | cut -d' ' -f 2) )
NAMESPACE="$(kubectl get pods --all-namespaces | grep $SERVICE | tr -s ' ' | cut -d' ' -f 1 | head -n 1)"
COUNTER=0
for POD in "${PODS[@]}"
do
let COUNTER=COUNTER+1
kubectl logs $PARAMS -n $NAMESPACE $POD > "${SERVICE}-${COUNTER}.log" &
done
set +o xtrace
wait