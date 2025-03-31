#!/bin/bash

T_SCALE_PROJECT="3scale"
OCP_USER="admin"
OCP_PASS="ja3oI2U6"
OCP_URL="https://api.sno.bttech.ocp:6443"

oc login -u "${OCP_USER}" -p "${OCP_PASS}" "${OCP_URL}"
POD_NAME=$(oc get pods --selector=app=smtp -o=jsonpath='{.items[0].metadata.name}' -n $T_SCALE_PROJECT)
POD_LOGS=$(oc logs $POD_NAME -n $T_SCALE_PROJECT)

echo "$POD_LOGS"
