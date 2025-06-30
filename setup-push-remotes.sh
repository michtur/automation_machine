#!/bin/sh

# Skrypt ustawiający dodatkowe adresy push dla origin
repo_name=$(basename "$(git rev-parse --show-toplevel)")
git remote remove origin
git remote add origin git@github.com:michtur/${repo_name}.git
git remote set-url --add --push origin git@github.com:michtur/${repo_name}.git
git remote set-url --add --push origin ssh://git@192.168.1.253:2222/michal/${repo_name}.git
echo "Dodano dodatkowe adresy push dla origin na:\n"
git remote get-url --push --all origin
