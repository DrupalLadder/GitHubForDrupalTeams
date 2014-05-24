#!/bin/bash
rm -r ./*
git checkout user-stories -- _book
mv _book/* ./
rm -r _book
git checkout -- book.sh
git add --all
git commit -m 'rebuilt book'
