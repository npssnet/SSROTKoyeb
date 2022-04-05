FROM alpine:edge

ARG PORT=80

RUN apk update && \
 apk add --no-cache ca-certificates wget && \
 wget -O ssr.zip https://github.com/ShadowsocksR-Live/shadowsocksr-native/releases/latest/download/ssr-native-linux-x64.zip && \
 unzip ssr.zip && \
 chmod +x /ssr-server && \
 rm -rf ssr.zip

RUN chmod -x+rw /config.json 
ADD entrypoint.sh //entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
