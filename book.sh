#!/bin/bash
rm -r ./*
git checkout master -- _book
mv _book/* ./
rm -r _book
git checkout -- book.sh
git add --all
git commit -m 'rebuilt book'
