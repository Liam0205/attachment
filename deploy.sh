#!/usr/bin/env bash

while ! (git add .); do echo "try again"; done
while ! (git commit -m "[site] Site updated: $(date +%Y-%m-%d) $(date +%H:%M:%S)"); do echo "try again"; done
while ! (git push -u coding master); do echo "try again"; done
while ! (git push -u origin master); do echo "try again"; done
