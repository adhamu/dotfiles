#!/usr/bin/env bash

echo "What's your name?"
read full_name

echo "What's your email address?"
read email

git config --global user.email "$email"
git config --global user.name "$full_name"

git config --global pull.rebase false
git config --global init.defaultBranch main

# gitignore_global
echo '.DS_Store' >> ~/.gitignore_global
echo 'yarn-error.log' >> ~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

echo "✅ Git config"
