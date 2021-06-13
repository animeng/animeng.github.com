#!/bin/bash

if [ $# != 1 ] ; then
    echo "包含文章名称的参数"
    exit 1
fi

bundle exec octopress new post $1

time=$(date "+%Y-%m-%d")

bundle exec octopress unpublish "${time}-$1.markdown"