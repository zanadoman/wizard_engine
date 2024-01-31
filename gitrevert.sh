#!/bin/bash

git config --global core.editor micro
git rebase -i "${1}"
git push --force-with-lease