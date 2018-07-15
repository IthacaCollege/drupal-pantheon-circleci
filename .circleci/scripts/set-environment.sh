#!/bin/bash

set -ex

#export PR_NUMBER=$(echo $CI_PULL_REQUEST | cut -d'/' -f7)
#export PR_LABEL=$CIRCLE_BRANCH:+pr-$PR_NUMBER}
#export CI_LABEL=ci-$CIRCLE_BUILD_NUM
#export ENV=$(echo ${PR_LABEL:-$CI_LABEL} | cut -c -11 | sed 's/-$//')

(
    echo "export TEST=simple"
    echo "export PR_NUMBER=$(echo $CI_PULL_REQUEST | cut -d'/' -f7)"
    echo "export PR_LABEL=$CIRCLE_BRANCH:+pr-$PR_NUMBER}"
    echo "export CI_LABEL=ci-$CIRCLE_BUILD_NUM"
    echo "export ENV=$(echo ${PR_LABEL:-$CI_LABEL} | cut -c -11 | sed 's/-$//')"
) > .environment

