FROM uchiwa/uchiwa:0.19.0

MAINTAINER Julien Kernec'h <jkernech@dial-once.com>

# Update base packages
RUN apk update && apk upgrade

# Install base packages and ruby gem dependencies
RUN apk add --no-cache ca-certificates wget

ENV DOCKERIZE_VERSION=0.2.0

RUN wget https://github.com/jwilder/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz \
	&& rm dockerize-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz \
	&& mkdir /etc/uchiwa

COPY config.tmpl /etc/uchiwa/

CMD dockerize -template /etc/uchiwa/config.tmpl:/etc/uchiwa/config.json \
    /go/bin/uchiwa -c /etc/uchiwa/config.json