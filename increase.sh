#!/usr/bin/env bash

versionLine=$(grep 'version' chubb-app/Chart.yaml)
versionLine=$(eval $(echo $versionLine | sed -E 's/^(version:)(.*)(\.)([0-9]+)/echo "\1\2\3$((\4+1))"/g'))
command="sed  's/^version:.*/$versionLine/' chubb-app/Chart.yaml"
eval $command