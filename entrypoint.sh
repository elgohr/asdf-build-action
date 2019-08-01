#!/usr/bin/env bash
set -e
. /asdf/.asdf/asdf.sh

asdf install $LANGUAGE $VERSION
asdf global $LANGUAGE $VERSION

/bin/bash -c "$*"
