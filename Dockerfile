FROM java

MAINTAINER Niels Heisterkamp <niels@2gears.com>

ARG VERSION=6.6.0.13

RUN curl -o /tmp/sencha.sh.zip \
        http://cdn.sencha.com/cmd/${VERSION}/no-jre/SenchaCmd-${VERSION}-linux-amd64.sh.zip && \
    unzip /tmp/sencha.sh.zip -d /tmp && \
    sh /tmp/SenchaCmd-${VERSION}*-linux-amd64.sh -q && \
    rm -rf /tmp/*

RUN ln -s /root/bin/Sencha/Cmd/sencha /usr/local/bin/sencha

ENTRYPOINT ["sencha"]
