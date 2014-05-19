#!/bin/bash

while [ "$1" != "" ]; do
  case $1 in
    --build | -b )  build=true
  esac
  shift
done

if [ $build = true ]; then
  coffee --compile --output build/js coffee
else
  coffee --watch --compile --output build/js coffee
fi