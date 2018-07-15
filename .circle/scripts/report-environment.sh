#!/bin/bash

set -ex

echo "Reporting variables from shell file"
echo $CIRCLE_BRANCH
echo $CIRCLE_PULL_REQUEST
echo $CIRCLE_BUILD_NUM
