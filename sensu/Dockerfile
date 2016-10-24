FROM        alpine:3.4

MAINTAINER  Ismar Slomic <ismar.slomic@accenture.com>

ENV         DOCKERIZE_VERSION=v0.2.0
ENV         DOCKERIZE_FILE_NAME=dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz
ENV         DOCKERIZE_FILE_URL=https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/${DOCKERIZE_FILE_NAME}

# Update package registry
RUN         apk update \
            # Upgrade base packages
            && apk upgrade \
            # Install base packages and ruby gem dependencies
            && apk add --no-cache bash tar bc build-base ca-certificates wget libffi-dev \
            # Install ruby and ruby-bundler
            && apk add --no-cache ruby-dev ruby-bundler ruby-rdoc ruby-irb \
            # Do not install Gem documentation when installing gems
            && echo "install: --no-rdoc --no-ri" >> /etc/gemrc \
            # Update Rubygems to latest (have a bug with sensu in default Alpine:3.4)
            && gem install rubygems-update && update_rubygems && gem update --system \
            # Install sensu gem
            && gem install sensu \
            # Install dockerize
            && wget -O - ${DOCKERIZE_FILE_URL} | tar -xzf - -C /usr/local/bin \
            # Cleanup no-more-used packages
            && apk del ruby-irb ruby-rdoc wget bash tar ca-certificates