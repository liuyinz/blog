#!/bin/sh

# f a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Commit changes.
msg="rebuilding site $(date -I)"

# Go To Public folder
cd public
git add .
git commit -m "$msg"
git push origin master

cd ../
git add public content/*
git commit -m "$msg"
git push origin master
