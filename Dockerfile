FROM alpine:edge

ARG PORT=80

RUN apk update && \
 mkdir -m 777 /ssrbin && \
 chgrp -R 0 /ssrbin && \
 chmod -R g+rwX /ssrbin

ADD config.json /ssrbin/config.json
ADD ssrserver.sh /ssrbin/ssrserver.sh
ADD entrypoint.sh /ssrbin/entrypoint.sh

RUN chmod +x /ssrbin/ssrserver.sh && \
 chmod -x+rw /ssrbin/config.json && \
 chmod +x /ssrbin/entrypoint.sh

CMD /ssrbin/entrypoint.sh
