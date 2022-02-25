#!/bin/bash
TEMP_GIT_REPOS_DIR=/data/repos
TEMP_REPORTS_DIR=/data/reports

# Delete existing reports
if [ -d "$TEMP_REPORTS_DIR" ]; then
  echo 'remove'
  rm -rf $TEMP_REPORTS_DIR
fi

mkdir -p "$TEMP_REPORTS_DIR"

cd $TEMP_GIT_REPOS_DIR
while read repo; do
  pwd
  cd ${repo}
  cloc --vcs git --out "$TEMP_REPORTS_DIR/$repo"
  cd $TEMP_GIT_REPOS_DIR
done < /dev/stdin
