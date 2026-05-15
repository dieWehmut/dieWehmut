#!/bin/bash

set -e

git add .
commit_info=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "$commit_info" || echo "Nothing to commit"

git push origin main --force