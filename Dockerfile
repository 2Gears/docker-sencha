FROM java

MAINTAINER niels@2gears.com

ARG VERSION=6.2.0

RUN curl -o /tmp/sencha.sh.zip \
        "http://cdn.sencha.com/cmd/beta/${VERSION}/no-jre/SenchaCmd-${VERSION}-linux-amd64.sh.zip" && \
    unzip /tmp/sencha.sh.zip -d /tmp && \
    sh /tmp/SenchaCmd-${VERSION}*-linux-amd64.sh -q && \
    rm -rf /tmp/*

ENTRYPOINT ["/root/bin/Sencha/Cmd/sencha"]
