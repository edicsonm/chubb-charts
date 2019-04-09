#!/usr/bin/env bash

#line=$(sed -n '/^version/p' chubb-app/Chart.yaml)
#echo "My line: "$line
#grep 'version' chubb-app/Chart.yaml

containerLine=$(grep 'version' chubb-app/Chart.yaml)
echo $containerLine

eval $(echo "version:0.1.34" | sed -E 's/(.*)(version:)(.*)([0-9]+)/echo "\1\2\3$((\4+1))"/g')




#echo "version: 0.1.34" | sed -n 's/version: (.*)/1/p'

#sed -r 's/(.*)(\?version=)([0-9]+)(.*)/echo "\1\2$((\3+1))\4"/ge' chubb-app/Chart.yaml

#eval $(echo "barbaz?cache_version=1.4fooooo" | sed -E 's/(.*)(\?cache_version=)(.*)([0-9]+)/echo "\1\2\3$((\4+1))"/g')


#string="CBX-1234--CBX-5678"
#shortenedString=$(echo "$string" | sed -E "s/^([A-Za-z]+-[0-9]+)/\1/")