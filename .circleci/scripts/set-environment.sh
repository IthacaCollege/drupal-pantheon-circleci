#!/bin/bash

mkdir -p config
ENV_FILE=config/env.sh

echo "export TEST=simple" >> $ENV_FILE
echo "export PR_NUMBER=$(echo $CI_PULL_REQUEST | cut -d'/' -f7)" >> $ENV_FILE
echo "export PR_LABEL=$CIRCLE_BRANCH:+pr-$PR_NUMBER}" >> $ENV_FILE
echo "export CI_LABEL=ci-$CIRCLE_BUILD_NUM" >> $ENV_FILE
echo "export ENV=$(echo ${PR_LABEL:-$CI_LABEL} | cut -c -11 | sed 's/-$//')" >> $ENV_FILE
