#!/bin/bash

SCRIPT="$0"
echo "# START SCRIPT: ${SCRIPT}"

executable="./modules/openapi-generator-cli/target/openapi-generator-cli.jar"

if [[ "true" == "${SKIP_EXPORT_DOCS}" ]]; then
  echo "Skipping doc exports. Note that docs generated by Windows may break paths as they have not yet been normalized to OS-specific paths."
  exit 0
fi

for GENERATOR in $(java -jar ${executable} list --short --include all | sed -e 's/,/\'$'\n''/g')
do
    ./bin/utils/export_generator.sh ${GENERATOR}
done
