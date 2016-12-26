#!/bin/bash

set -e

# init commands
#mkdir -p _book
#cd _book
#git init
#git remote add origin git@github.com:minhajuddin/continuous_deployment_for_phoenix_apps.git
#git checkout -b gh-pages

# build all versions
gitbook build
#gitbook pdf _books/continuous-deployment-for-phoenix-apps.pdf
#gitbook mobi _books/continuous-deployment-for-phoenix-apps.mobi
#gitbook epub _books/continuous-deployment-for-phoenix-apps.epub

cd _book
#git init
#git checkout -b gh-pages
git add .
git commit -am 'Update docs'
git push origin gh-pages
