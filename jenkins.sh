#!/bin/bash

sudo su

export PATH="$PATH:/root/.nvm/versions/node/v10.16.0/bin"

HOME=/root

cd $HOME

rm -r hexo-source

git clone git@github.com:joejztang/<your_awesome_repo>.git

rm -rf techblog/source/

mkdir techblog/source

cp -r your_awesome_repo/* techblog/source/

cd $HOME/techblog

hexo d -g

exit
