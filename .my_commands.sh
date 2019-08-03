#!/bin/bash

function create() {
    cd
    python create.py $1
    cd /Users/zhongjieruan/Documents/Projects/MyProjects/$1
    git init
    git remote add origin git@github.com:chenhunluo321/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}