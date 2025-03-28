#!/usr/bin/env sh

# abort on errors
set -e

# Clean install dependencies
npm ci

# Build with base properly set
npm run build

# Ensure CNAME file exists in dist
echo "joyceoh.com" > dist/CNAME

# Prepare for deployment
cd dist

# Initialize git
git init
git checkout -b main
git add -A
git commit -m 'Deploy to GitHub Pages'

# Force push to the gh-pages branch
git push -f git@github.com:joyceoh/portfolio.git main:gh-pages

# Go back to previous directory
cd -
