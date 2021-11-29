#!/bin/bash

set -e

echo ''

# env
echo "node version: $(node -v)"
echo "npm version: $(npm -v)"

if [[ -z "$SOURCE_DIR" ]]; then
  source="/"
else
  source="$SOURCE_DIR"
fi

if [[ -z "$BUILD_SCRIPT" ]]; then
  script="yarn && yarn docs:build"
else
  script="$BUILD_SCRIPT"
fi


# Build vuepress project
echo "BUILD_SCRIPT: ${script}"
echo "github.workspace: ${GITHUB_WORKSPACE}"
dir="${GITHUB_WORKSPACE}/"




echo "npm view: `npm view vuepress`"
for i in ${source}
do
  echo `ls`
  cd ${dir}${i}
  echo "start build in : `pwd`"
  eval "${script}"
  echo "${i} Build success"
done

echo "Build Success!"
