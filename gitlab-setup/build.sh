#!/bin/bash
ruby setup.rb

git config --global user.name "Test User"
git config --global user.email "test@localhost"

init_repo() {
    git clone http://root:adminadmin@host.docker.internal:9090/root/$1.git
    cp -r ./projects/$1/* $1/
    cd $1/
    git add .
    git commit -m "initial commit"
    git push -u origin master
}

init_repo dgr-parent
