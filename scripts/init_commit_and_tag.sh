#!/bin/bash

# Check current branch
branch=$(git rev-parse --abbrev-ref HEAD)

if [ "$branch" == "main" ]; then
    echo "🚀 Public repo detected (main branch)"
    git add .
    git commit -m "Initial commit: repo scaffold for RepoBuilderGPT public edition 🎯"
    git tag -a v1.0.0 -m "v1.0.0 – Public repo structure with example GPT config and demo files"
    git push origin main
    git push origin v1.0.0
    echo "✅ Pushed to main with tag v1.0.0"
else
    echo "🔐 Non-main branch ($branch) detected"
    git add .
    git commit -m "Initial commit for $branch: client or integration specific structure 💼"
    git tag -a ${branch}-v1.0.0 -m "${branch} – initial setup"
    git push origin $branch
    git push origin ${branch}-v1.0.0
    echo "✅ Pushed to $branch with tag ${branch}-v1.0.0"
fi
