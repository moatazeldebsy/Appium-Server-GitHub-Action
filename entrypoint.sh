#!/bin/bash
set -ex

echo "Install and Running Appium Server V2 as a Background process"

sudo npm install -g appium@next
appium driver install xcuitest
appium driver install espresso
appium driver install flutter

appium -v
appium --log appium.log &>/dev/null &
