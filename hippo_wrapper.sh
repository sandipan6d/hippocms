#!/bin/bash

./start_cmd.sh -D
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start hippo service: $status"
  exit $status
fi
