FROM lgohr/asdf
LABEL "com.github.actions.name"="ASDF Build"
LABEL "com.github.actions.description"="Uses ASDF to provide a configurable build environment for Github Actions"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
