FROM dialonce/sensu

MAINTAINER Julien Kernec'h <jkernech@dial-once.com>

ENV SENSU_API_USER=WqNu4awAaNoP SENSU_API_PASS=abcXvzSqoSw7
EXPOSE 4567

COPY conf.d /etc/sensu/conf.d

CMD dockerize -template /etc/sensu/conf.d/config.tmpl:/etc/sensu/conf.d/config.json \
	-wait tcp://$RABBITMQ_HOST:$RABBITMQ_PORT \
	-wait tcp://$REDIS_HOST:$REDIS_PORT \
	sensu-api -d /etc/sensu/conf.d
