#!/bin/bash

GIT_REPO="$1"

GIT_URL="https://github.com/igstbagusdharmaputra/$GIT_REPO.git"

# Clone or pull latest
if [ ! -d "$GIT_REPO" ]; then
   mkdir -p $GIT_REPO && cd $GIT_REPO && git clone $GIT_URL . && cd /data/repos
else
  echo 'hai'
  cd $GIT_REPO && git pull && cd /data/repos
fi
