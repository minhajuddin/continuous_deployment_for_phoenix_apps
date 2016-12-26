#!/bin/bash

set -e

log(){
  echo "> $*"
}

# build all versions
log "building book"
gitbook build
#gitbook pdf _books/continuous-deployment-for-phoenix-apps.pdf
#gitbook mobi _books/continuous-deployment-for-phoenix-apps.mobi
#gitbook epub _books/continuous-deployment-for-phoenix-apps.epub

log "copying files"
cd _gh_pages
cp ../_book/* . -R

echo 'continuous-deployment-for-phoenix-apps.rawcode.in' > CNAME
git add .
git commit -am 'rebuild book'

log "pushing to github"
git push origin gh-pages
