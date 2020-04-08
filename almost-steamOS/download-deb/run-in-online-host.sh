#!/usr/bin/env bash

cat package-list.txt | xargs apt download
mv *.deb $PWD/downloaded/
