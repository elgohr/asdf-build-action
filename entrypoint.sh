#!/usr/bin/env bash
set -e
. /asdf/.asdf/asdf.sh

asdf plugin-add go https://github.com/kennyp/asdf-golang.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add yarn https://github.com/twuni/asdf-yarn.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git

asdf install $LANGUAGE $VERSION
asdf global $LANGUAGE $VERSION

/bin/bash -c "$*"
