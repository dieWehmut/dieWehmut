#!/bin/bash

set -e

git status
git add .
commit_info=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "$commit_info" || echo "Nothing to commit"
git pull --rebase origin main
git push origin main
