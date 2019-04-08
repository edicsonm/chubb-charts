#!/usr/bin/env bash

currentDate=$(date +"%T")
git add .
git commit -m "Generating new distribution at $currentDate"
git push origin master