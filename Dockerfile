FROM java

MAINTAINER Niels Heisterkamp <niels@2gears.com>

ARG VERSION=6.1.3.42

RUN curl -o /tmp/sencha.sh.zip \
        http://cdn.sencha.com/cmd/${VERSION}/no-jre/SenchaCmd-${VERSION}-linux-amd64.sh.zip && \
    unzip /tmp/sencha.sh.zip -d /tmp && \
    sh /tmp/SenchaCmd-${VERSION}*-linux-amd64.sh -q && \
    rm -rf /tmp/*

ENTRYPOINT ["/root/bin/Sencha/Cmd/sencha"]
