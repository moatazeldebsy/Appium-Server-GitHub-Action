#!/bin/bash
set -ex

echo "Install and Running Appium Server as a Background process"

sudo npm install -g appium@next --unsafe-perm=true --allow-root
appium -v
appium &>/dev/null &
