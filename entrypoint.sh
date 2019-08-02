#!/usr/bin/env bash
set -e

 . /asdf/.asdf/asdf.sh
asdf plugin-add $ENVIRONMENT
asdf install $ENVIRONMENT $VERSION
asdf global $ENVIRONMENT $VERSION

/bin/bash -c "$*"
