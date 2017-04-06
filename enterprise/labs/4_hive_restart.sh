#!/bin/bash

CM_URL=52.200.147.103
CM_PORT=7180
CLUSTER_NAME=fallc0nn
SERVICE=hive
USER=admin
PASS=cloudera

for COMMAND in stop start; do
  (( "$COMMAND" == "stop" )) && echo -n "Stoping $SERVICE... " || echo -n "Starting $SERVICE... ";
  curl -X POST -u "$USER:$PASS" "http://$CM_URL:$PORT/api/v2/clusters/$CLUSTER_NAME/services/$SERVICE/commands/$COMMAND" >/tmp/$$ 2>&1 && rm -f /tmp/$$ && echo "OK" || {
    echo "FAIL"
    cat "/tmp/$$"
  }
  (( "$COMMAND" == "stop" )) && echo "Waiting 10 seconds to continue" && sleep 10
done

