#!/bin/bash

# Default environment uses the CircleCI build num.
TERMINUS_ENV=ci-$CIRCLE_BUILD_NUM

# If there is a PR number provided, use it instead.
if [[ -n ${CIRCLE_PULL_REQUEST} ]] ; then
  TERMINUS_ENV=pr-${CIRCLE_PULL_REQUEST##*/}
fi

# But if this is the deployment branch, we use that.
if [[ $CIRCLE_BRANCH == $DEPLOYMENT_BRANCH ]]
then
  TERMINUS_ENV=ci-dev-$CIRCLE_BUILD_NUM
fi

export TERMINUS_ENV=$TERMINUS_ENV
