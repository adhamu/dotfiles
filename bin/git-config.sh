#!/usr/bin/env bash

read -p "Name: " FULL_NAME
read -p "Email address: " EMAIL_ADDRESS

git config --global user.name "$FULL_NAME"
git config --global user.email "$EMAIL_ADDRESS"

git config --global pull.rebase false
git config --global init.defaultBranch main

# gitignore_global
grep -qxF '.DS_Store' ~/.gitignore_global || echo '.DS_Store' >>~/.gitignore_global
grep -qxF 'yarn-error.log' ~/.gitignore_global || echo 'yarn-error.log' >>~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

echo "✅ Git config"
