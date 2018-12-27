#!/bin/sh

npm i debug@latest @types/debug@latest -D

DIST=./dist
mkdir -p $DIST
rm -rf $DIST/*

cp node_modules/debug/LICENSE $DIST

cp node_modules/@types/debug/index.d.ts $DIST

cp node_modules/debug/src/* $DIST

mkdir $DIST/ms
cp -rf node_modules/ms/{index.js,license.md} $DIST/ms
mv $DIST/ms/license.md $DIST/ms/LICENSE

sed -i "" "s/'ms'/'.\/ms'/g" $DIST/common.js
