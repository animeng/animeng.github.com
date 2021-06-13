#!/bin/bash

if [ $# != 1 ] ; then
    echo "包含文章名称的参数"
    exit 1
fi

bundle exec octopress publish $1