#!/bin/bash

should_fetch=0;
should_sync=0;

for p in "$@"; do
    if [ "${p}" == 'fetch' ]; then
        should_fetch=1;
    elif [ "${p}" == 'sync' ]; then
        should_sync=1;
    else
        echo "Unsupported parameter ${p}";
        exit 1;
    fi;
done;

echo "Should fetch: ${should_fetch}";
echo "Should sync: ${should_sync}";

MIRROR_DIR=`pwd`/generated-web

TMP_DIR=/tmp/mpz-tmp-`date +"%s"`

echo "MIRROR_DIR: ${MIRROR_DIR}";
echo "TMP_DIR: ${TMP_DIR}";

if [ ${should_fetch} == 1 ]; then
    rm -rf ${MIRROR_DIR};
    mkdir -p ${MIRROR_DIR};
    mkdir -p ${TMP_DIR};

    cd ${MIRROR_DIR};

    # download everything
    # do not use --convert-links --adjust-extension --page-requisites
    wget --mirror --no-parent 'https://martin-majlis.gitbook.io/mysleni-pro-zivot/'

    # convert into index.html pages so it can be served
    find . -mindepth 2 -type f \( ! -name "index.html" \) -exec mv {} ${TMP_DIR}/index.html \; -exec mkdir -p {} \; -exec mv ${TMP_DIR}/index.html {} \;
    # # fix pages
    find . -type f -exec sed -ri 's/mysleni-pro-zivot//g' {} \;
    find . -type f -exec sed -ri 's/martin-majlis.gitbook.io/mysleniprozivot.cz/g' {} \;

    find ${MIRROR_DIR};
fi;

if [ ${should_sync} == 1 ]; then
    cd ${MIRROR_DIR}/martin-majlis.gitbook.io/mysleni-pro-zivot;
    rsync -e ssh -avz . ${MPZ_USER}@${MPZ_SERVER}:/var/www/mysleniprozivot.cz/www
fi;
