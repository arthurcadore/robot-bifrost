#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

cd /robot/scripts

# Executing Test
cd ./tests/
robot --variable BROWSER:chrome --variable DRIVER_PATH:/usr/local/bin/chromedriver --variable HEADLESS:True --variable OPTIONS:add_argument=--no-sandbox --variable OPTIONS:add_argument=--disable-dev-shm-usage openweb.robot

tail -f /dev/null