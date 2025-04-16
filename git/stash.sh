#!/bin/bash

read -p "Message pour le stash: " msg
git stash push -u -m "$msg"

# A ajouter dans ~/.gitconfig
#[alias]
#    sta = "!~/wsl-scripts/git/stash.sh"

