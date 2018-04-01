#!/bin/bash
git init
git remote add origin https://github.com/jczacharia/jomby.git
git add .
git commit -m "Adding files."
git fetch origin master
git push -u origin master
#jcz
