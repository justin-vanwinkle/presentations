#!/bin/bash

set -e

USER_GID="$(stat -c '%g' /app/talk/slides.md)"
USER_UID="$(stat -c '%u' /app/talk/slides.md)"

groupadd -g "$USER_GID" user

useradd --shell /bin/bash -u "$USER_UID" -g "$USER_GID" -m user

chown -R user:user /reveal.js

sudo -u user rsync -a /reveal.js /app/talk

# https://stackoverflow.com/a/20381373/586148
DIRECTORY_TO_OBSERVE="/app/talk"
function block_for_change {
  inotifywait --exclude reveal.js --exclude index.html -r -e modify,move,create,delete $DIRECTORY_TO_OBSERVE
}

function build {
  sudo -u user pandoc -V history=true -t revealjs -s /app/talk/slides.md -o /app/talk/index.html
}

build

pushd /app/talk/; python -m SimpleHTTPServer 80

while block_for_change; do
  build
done
