#!/bin/sh

echo "Updating ./zshrc"
cp ~/.zshrc ./.zshrc

git add .
git commit -m "✨ update"
git push