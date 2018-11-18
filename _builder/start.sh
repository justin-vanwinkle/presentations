#!/bin/bash

set -e

USER_GID="$(stat -c '%g' /app/talk/slides.md)"
USER_UID="$(stat -c '%u' /app/talk/slides.md)"

groupadd -g "$USER_GID" user

useradd --shell /bin/bash -u "$USER_UID" -g "$USER_GID" -m user

chown -R user:user /reveal.js

sudo -u user rsync -a /reveal.js /app/talk/output

# https://stackoverflow.com/a/20381373/586148
DIRECTORY_TO_OBSERVE="/app/talk"
function block_for_change {
  inotifywait -r -e modify,move,create,delete /app/talk
}

function build {
  sudo -u user pandoc -V history=true -t revealjs -s /app/talk/slides.md -o /app/talk/output/index.html
}

function build_on_change {
  while block_for_change; do
    build
  done
}

build
build_on_change &

pushd /app/talk/output; python -m SimpleHTTPServer 80

