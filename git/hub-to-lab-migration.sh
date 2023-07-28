#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the target remote"
  exit 1
fi

if [ -z "$2" ]; then
  echo "Please provide the target branch"
  exit 1
fi


if [ -z "$3" ]; then
  echo "Please provide the source branch"
  exit 1
fi


target_remote="$1"
target_branch="$2"
soruce_branch="$3"


git branch --set-upstream-to="$target_remote"/"$target_branch" "$target_branch"

git checkout "$target_branch"

git checkout main

git checkout -b "$soruce_branch"

# Get a list of all the files that have changed between the target and main branch
changed_files=$(git diff main..."$target_branch" --name-only)

# Step 4: Run a loop for each file that changed and run the command "git checkout TARGET_BRANCH -- FILE_PATH"
for file in $changed_files; do
  echo git checkout "$target_branch" -- "$file"
  git checkout "$target_branch" -- "$file"
done

echo "Files have been checked out from $target_branch to $new_branch successfully."
