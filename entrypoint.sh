#!/bin/bash
set -ex
echo "Install and Running Appium Server as a Background process"

npm install -g appium
appium -v
appium &>/dev/null &