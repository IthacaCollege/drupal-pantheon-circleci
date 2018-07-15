#!/bin/bash

export PR_NUMBER=$(echo $CI_PULL_REQUEST | cut -d'/' -f7)
export PR_LABEL=$CIRCLE_BRANCH:+pr-$PR_NUMBER}
export CI_LABEL=ci-$CIRCLE_BUILD_NUM
export ENV=$(echo ${PR_LABEL:-$CI_LABEL} | cut -c -11 | sed 's/-$//')
