##These are the commands to run:
```bash
helm package chubb-st-configmap
helm repo index ./ --url https://edicsonm.github.io/chubb-charts/
```
```bash
helm package chubb-uat-configmap
helm repo index ./ --url https://edicsonm.github.io/chubb-charts/
```
```bash
helm package chubb-app
helm repo index ./ --url https://edicsonm.github.io/chubb-charts/
```
#To create a new chart run:
```bash
helm create new-chart-name
```