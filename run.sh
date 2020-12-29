#!/bin/bash

if [ -z ${INPUT_TARBALL+x} ]; then
  caprover deploy -h $INPUT_SERVER -p $INPUT_PASSWORD -a $INPUT_APPNAME -t $INPUT_TARBALL
elif [ -z ${INPUT_BRANCH+x} ]; then
  caprover deploy -h $INPUT_SERVER -p $INPUT_PASSWORD -a $INPUT_APPNAME -b $INPUT_BRANCH
else
  echo "Invalid input. Either a tarball or a branch argument is required."
  exit 1
fi

