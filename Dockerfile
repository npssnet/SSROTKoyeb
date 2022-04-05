FROM alpine:edge

RUN apk update && \
 mkdir -m 777 /ssrbin && \
 chgrp -R 0 /ssrbin && \
 chmod -R g+rwX /ssrbin && \
 apk add --no-cache ca-certificates wget && \
 wget -O ssr.zip https://github.com/ShadowsocksR-Live/shadowsocksr-native/releases/latest/download/ssr-native-linux-x64.zip && \
 unzip ssr.zip -d /ssrbin ssr-server config.json && \
 chmod +x /ssrbin/ssr-server && \
 chmod -x+rw /ssrbin/config.json && \
 rm -rf ssr.zip

ADD entrypoint.sh /ssrbin/entrypoint.sh
RUN chmod +x /ssrbin/entrypoint.sh 

CMD /ssrbin/entrypoint.sh
