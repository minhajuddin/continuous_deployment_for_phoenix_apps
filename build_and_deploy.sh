#!/bin/bash

set -e

log(){
  echo "> $*"
}

# init commands
#mkdir -p _book
#cd _book
#git init
#git remote add origin git@github.com:minhajuddin/continuous_deployment_for_phoenix_apps.git
#git checkout -b gh-pages

# build all versions
log "building book"
gitbook build
#gitbook pdf _books/continuous-deployment-for-phoenix-apps.pdf
#gitbook mobi _books/continuous-deployment-for-phoenix-apps.mobi
#gitbook epub _books/continuous-deployment-for-phoenix-apps.epub

log "committing code"
cd _book
#git init
#git checkout -b gh-pages
echo 'continuous-deployment-for-phoenix-apps.rawcode.in' > CNAME
git add .
git commit -am 'rebuild book'

log "pushing to github"
git push origin gh-pages
