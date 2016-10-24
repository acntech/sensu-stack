FROM        acntech/sensu

MAINTAINER  Ismar Slomic <ismar.slomic@accenture.com>

RUN         apk add wget ca-certificates && update-ca-certificates
RUN         gem install sensu-plugins-slack sensu-plugins-mailer

COPY        conf.d /etc/sensu/conf.d

CMD         dockerize \
            -template /etc/sensu/conf.d/config.tmpl:/etc/sensu/conf.d/config.json \
            -template /etc/sensu/conf.d/handlers/slack.tmpl:/etc/sensu/conf.d/handlers/slack_handler.json \
            -template /etc/sensu/conf.d/handlers/mailer.tmpl:/etc/sensu/conf.d/handlers/mailer_handler.json \
            sensu-server -d /etc/sensu/conf.d
