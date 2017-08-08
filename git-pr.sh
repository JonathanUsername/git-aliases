#!/bin/bash

REPO=$(git remote get-url origin | sed -E 's/^git@github.com:|\.git$//g')

TOKEN="$(jq -r .token ~/secrets.json)"
URL="http://api.github.com/repos/$REPO/pulls?access_token=$TOKEN"
BRANCH="$(git symbolic-ref --quiet --short HEAD)"
JQ=".[] | select(.head.ref == \"$BRANCH\") | ._links.html.href"

URL=$(curl -sL "$URL" | jq -r "$JQ")
COMPARE_URL="https://github.com/$REPO/compare/$BRANCH?expand=1"

[[ -n "$URL" ]] && open "$URL" || open "$COMPARE_URL"
