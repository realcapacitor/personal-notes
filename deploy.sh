#!/bin/bash

echo "Generating site with Kiln..."
/opt/homebrew/bin/kiln generate

if [ $? -ne 0 ]; then
    echo "Kiln generation failed."
    exit 1
fi


echo ""
git status

echo ""
#read -p "Enter commit message: " commitmsg

git add .

git commit -m "Obsidiean Push"

if [ $? -ne 0 ]; then
    echo "Git commit failed."
    exit 1
fi

echo "Pushing to GitHub..."
git push

if [ $? -eq 0 ]; then
    echo ""
    echo "Deployment complete."
else
    echo "Git push failed."
fi
