#!/usr/bin/env bash

currentDate=$(date +"%T")
rm chubb-app-*.tgz
#helm package chubb-*-configmap
helm package chubb-app
#curl --data-binary "@chubb-app-*.tgz" http://52.62.43.213:1080/api/charts
#helm repo index ./ --url https://edicsonm.github.io/chubb-charts/
#git add .
#git commit -m "Generating new distribution at $currentDate"
#git push origin master


#sed -n '/^version/p' chubb-app/Chart.yaml
#echo $line
for file in *.tgz
do
    if [[ -f $file ]]; then
    echo $file
        com="curl --data-binary \"@$file\" http://52.62.43.213:1080/api/charts"
        eval "$com"
    fi
done