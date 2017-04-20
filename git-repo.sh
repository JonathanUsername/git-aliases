#!/bin/bash

REPO=$(git remote get-url origin | sed -E 's/^git@github.com:|\.git$//g')

open "http://www.github.com/$REPO"
