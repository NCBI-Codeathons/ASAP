#!/bin/bash

set -eu

if [[ ! -f Tcl.tar.gz ]]; then echo "I need an Tcl interpreter source code named \"Tcl.tar.gz\" but cannot find any. Quit. " && exit 1; fi

cd base
docker build -f Dockerfile -t "svannbase:2.2"
cd -

docker build -f Dockerfile -t "annotatesv:2.2"
