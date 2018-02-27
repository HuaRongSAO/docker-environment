#!/usr/bin/env bash

echo "开始创建数据文件夹..."
mkdir -p ./mongo/data/db
mkdir -p ./mysql/data/lib/mysql \
      ./mysql/data/docker-entrypoint-initdb.d/
mkdir -p ./redis/data/src
echo "数据文件创建完成..."
