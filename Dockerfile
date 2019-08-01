FROM ubuntu:19.10
LABEL "com.github.actions.name"="ASDF Build"
LABEL "com.github.actions.description"="Uses ASDF to provide a configurable build environment for Github Actions"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && apt-get install -y \
  ca-certificates git curl \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev \
  unzip \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf \
  && cd ~/.asdf \
  && git checkout "$(git describe --abbrev=0 --tags)" \
  && /bin/bash -c ". ~/.asdf/asdf.sh \
  && asdf plugin-add go https://github.com/kennyp/asdf-golang.git \
  && asdf plugin-add java https://github.com/halcyon/asdf-java.git \
  && asdf plugin-add yarn https://github.com/twuni/asdf-yarn.git \
  && asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git \
  && asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
