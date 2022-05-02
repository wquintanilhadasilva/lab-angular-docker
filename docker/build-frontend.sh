#!/bin/sh

set -eu

cd plecliente/
npm install
npm run build

cd dist
tar zcvf dist.tar.gz *
mv dist.tar.gz ../../docker/nginx/
