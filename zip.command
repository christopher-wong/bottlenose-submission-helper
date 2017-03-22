#!/bin/bash
echo -n -e "\033]0;My Window Name\007"

cd -- "$(dirname "$BASH_SOURCE")"

rm -f submission.zip
zip -r submission.zip src test out resources

echo ""
echo "Files zipped for submission!"

osascript -e 'tell application "Terminal" to close (every window whose name contains "My Window Name")' &