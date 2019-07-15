#!/bin/bash

sudo su

export PATH="$PATH:/root/.nvm/versions/node/v10.16.0/bin"

HOME=/root

cd $HOME

rm -r hexo-source

git clone git@github.com:joejztang/hexo-source.git

rm -rf techblog/source/

mkdir techblog/source

cp -r hexo-source/* techblog/source/

cd $HOME/techblog

hexo d -g

exit
