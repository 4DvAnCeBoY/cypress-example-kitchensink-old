#!/bin/bash
echo "Executing Test"
lambdatest-cypress run sync=true 
echo "Downloading Assets"
lambdatest-cypress generate-report
echo "Merging Files"
find ./lambdatest-artefacts -type f -name "*.json" -exec  cat {} \; > output.json 
