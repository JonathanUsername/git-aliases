TOKEN="$(cat ~/secrets.json | jq -r .token)"
URL="http://api.github.com/repos/mixcloud/mixcloud/pulls?access_token=$TOKEN"
BRANCH="$(git symbolic-ref --quiet --short HEAD)"
JQ=".[] | select(.head.ref == \"$BRANCH\") | ._links.html.href"

URL=$(curl -sL "$URL" | jq -r "$JQ")

[[ -n "$URL" ]] && open "$URL"
