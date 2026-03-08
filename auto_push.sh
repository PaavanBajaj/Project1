#!/bin/bash

while true; do
  if [[ -n $(git status --porcelain) ]]; then
    CHANGED=$(git status -s)          
    git add .
    git commit -m "Auto push: $(date '+%H:%M:%S') | Changes: $CHANGED"
    git push
  fi
  sleep 300
done