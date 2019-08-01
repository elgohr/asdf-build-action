#!/usr/bin/env bash
set -e
. $ASDF_HOME/.asdf/asdf.sh

asdf install $LANGUAGE $VERSION
asdf global $LANGUAGE $VERSION

/bin/bash -c "$*"
