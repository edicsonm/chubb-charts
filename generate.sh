#!/usr/bin/env bash

currentDate = date +"%T"
helm package chubb-*-configmap
helm repo index ./ --url https://edicsonm.github.io/chubb-charts/
git add .
git commit -m "Generating new distribution at $currentDate"
git push origen master
