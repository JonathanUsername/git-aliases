#!/bin/bash

path=$(pwd)

[[ $path == *src/github.com/* ]] && open "http://www.${path#/Users/jonathan/src/}"
