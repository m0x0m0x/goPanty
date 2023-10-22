#!/bin/bash

# Checkout the branch where you want to merge all other branches
git checkout main

# Loop through each branch and merge
for branch in $(git branch --format='%(refname:lstrip=2)'); do
  git merge $branch --allow-unrelated-histories -m "Force merge $branch"
done