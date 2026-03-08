#!/bin/bash

while true; do
  if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "auto update"
    git push
  fi
  sleep 300
done
