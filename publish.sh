#!/bin/bash

MIRROR_DIR=/tmp/mpz-mirror-`date +"%s"`
TMP_DIR=/tmp/mpz-tmp-`date +"%s"`

echo "MIRROR_DIR: ${MIRROR_DIR}";
echo "TMP_DIR: ${TMP_DIR}";

mkdir -p ${MIRROR_DIR};
mkdir -p ${TMP_DIR};

cd ${MIRROR_DIR};

# download everything
# do not use --convert-links --adjust-extension --page-requisites
wget --mirror --no-parent 'https://martin-majlis.gitbook.io/mysleni-pro-zivot/'

# convert into index.html pages so it can be served
find . -mindepth 2 -type f -exec mv {} ${TMP_DIR}/index.html \; -exec mkdir -p {} \; -exec mv ${TMP_DIR}/index.html {} \;
# # fix pages
find . -type f -exec sed -ri 's/mysleni-pro-zivot//g' {} \;
find . -type f -exec sed -ri 's/martin-majlis.gitbook.io/mysleniprozivot.cz/g' {} \;

cd ${MIRROR_DIR}/martin-majlis.gitbook.io/mysleni-pro-zivot;

rsync -avz . root@67.205.142.190:/var/www/mysleniprozivot.cz/www

# rm -rf ${MIRROR_DIR} ${TMP_DIR};

