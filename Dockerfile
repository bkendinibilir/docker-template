FROM alpine:3.5
MAINTAINER Benjamin Kendinibilir <bkendinibilir@mac.com>
ARG VERSION

ENV SERVICE_SETTING_1=1 \
    SERVICE_SETTING_2=2

COPY scripts/entrypoint.sh /usr/bin
COPY config/service.conf.default /etc/

RUN chmod +x /usr/bin/entrypoint.sh

RUN set -x \
    && apk upgrade --update \
    && apk add --no-cache SERVICE

VOLUME []

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["SERVICE"]