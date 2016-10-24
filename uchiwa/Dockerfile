FROM        uchiwa/uchiwa:0.19.0

MAINTAINER  Ismar Slomic <ismar.slomic@accenture.com>

# Update base packages
RUN         apk update && apk upgrade

# Install base packages and ruby gem dependencies
RUN         apk add --no-cache ca-certificates wget

# Install Dockerize
ENV         DOCKERIZE_VERSION=v0.2.0
ENV         DOCKERIZE_FILE_NAME=dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz
ENV         DOCKERIZE_FILE_URL=https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/${DOCKERIZE_FILE_NAME}
RUN         wget ${DOCKERIZE_FILE_URL} \
            && tar -C /usr/local/bin -xzvf ${DOCKERIZE_FILE_NAME} \
	        && rm ${DOCKERIZE_FILE_NAME}

# Create uchiwa folder
RUN         mkdir /etc/uchiwa

COPY        config.tmpl /etc/uchiwa/

CMD         dockerize -template /etc/uchiwa/config.tmpl:/etc/uchiwa/config.json \
            /go/bin/uchiwa -c /etc/uchiwa/config.json