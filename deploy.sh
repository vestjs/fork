#!/bin/bash
set -e


git config user.name "Travis CI"
git config user.email "octagonpentagonhexagon@gmail.com"

git checkout master
git add .
git commit -m "Update dist [ci skip]"

git push "https://${GITHUB_SECRET_TOKEN}@${GH_REF}" master > /dev/null 2>&1
