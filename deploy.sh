#!/usr/bin/env sh

# abort on errors
set -e

# Clean install dependencies
pnpm install --frozen-lockfile

# Build with base properly set
pnpm run build

# Ensure CNAME file exists in dist
echo "joyceoh.com" > dist/CNAME

# Make sure all assets are correctly included
cp -r public/* dist/ 2>/dev/null || :

# Prepare for deployment
cd dist

# Initialize or reset git
rm -rf .git
git init
git checkout -b main
git add -A
git commit -m 'Deploy to GitHub Pages'

# Force push to the gh-pages branch
git push -f git@github.com:joyceoh/portfolio.git main:gh-pages

# Go back to previous directory
cd -
