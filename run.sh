#!/bin/bash

if [[ -z ${INPUT_SERVER} ]] || [[ -z ${INPUT_PASSWORD} ]] || [[ -z ${INPUT_APPNAME} ]]; then
  echo "Invalid input. Some required arguments missing."
  exit 1
fi

if [[ ! -z ${INPUT_TARBALL} ]]; then
  caprover deploy -h $INPUT_SERVER -p $INPUT_PASSWORD -a $INPUT_APPNAME -t $INPUT_TARBALL
elif [[ ! -z ${INPUT_BRANCH} ]]; then
  caprover deploy -h $INPUT_SERVER -p $INPUT_PASSWORD -a $INPUT_APPNAME -b $INPUT_BRANCH
else
  echo "Invalid input. Either a tarball or a branch argument is required."
  exit 1
fi

