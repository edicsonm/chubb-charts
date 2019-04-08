#!/usr/bin/env bash

currentDate=$(date +"%T")
git add .
git commit -m "Saving changes at $currentDate"
git push origin master