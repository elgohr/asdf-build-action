FROM lgohr/asdf
LABEL "repository"="https://github.com/elgohr/asdf-build-action"
LABEL "maintainer"="Lars Gohr"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
