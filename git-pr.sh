#!/bin/bash

# configure me!
REPO=$(git remote get-url origin | sed -E 's/^git@github.com:|\.git$//g')

TOKEN="$(cat ~/secrets.json | jq -r .token)"
URL="http://api.github.com/repos/$REPO/pulls?access_token=$TOKEN"
BRANCH="$(git symbolic-ref --quiet --short HEAD)"
JQ=".[] | select(.head.ref == \"$BRANCH\") | ._links.html.href"

URL=$(curl -sL "$URL" | jq -r "$JQ")

[[ -n "$URL" ]] && open "$URL" || echo "No PR found for $BRANCH in github.com/$REPO."
