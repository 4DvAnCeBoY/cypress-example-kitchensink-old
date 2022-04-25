#!/bin/bash
echo "Executing Test"
lambdatest-cypress run sync=true 
echo "Downloading Assets"
lambdatest-cypress generate-report --user=$LT_USERNAME --access_key=$LT_ACCESS_KEY --sid=$SESSION_ID
echo "Merging Files"
find ./lambdatest-artefacts -type f -name "*.json" -exec  cat {} \; > output.json 