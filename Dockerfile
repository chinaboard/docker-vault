FROM vault:1.0.0-beta1
MAINTAINER chinaboard

RUN apk add --no-cache gettext curl bash

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 8201

CMD ["vault", "server", "-config", "/vault/config"]
