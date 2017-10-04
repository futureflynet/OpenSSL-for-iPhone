#!/bin/bash
./build-libssl.sh --version=1.1.0f --archs="arm64 armv7s armv7" --targets="ios64-cross-arm64 ios-cross-armv7s ios-cross-armv7" --deprecated;
echo Building framework;
./create-openssl-framework.sh;
echo Copying framework to ../gloox/gloox-ios/;
cp -rf openssl.framework ../gloox/gloox-ios/;
