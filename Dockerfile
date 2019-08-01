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

ENV HOME /asdf
RUN git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf \
  && cd $HOME/.asdf \
  && git checkout "$(git describe --abbrev=0 --tags)"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
