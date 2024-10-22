#!/bin/bash
set -e

trap 'echo "An error occurred. Exiting..."; exit 1;' ERR

echo "Install and Running Appium Server V2 as a Background process"

sudo npm install -g appium@next
appium driver install xcuitest
appium driver install espresso

appium -v
appium --log appium.log &>/dev/null &
