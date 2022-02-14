FROM ubuntu:18.04
WORKDIR /root
USER root
COPY start.sh .
COPY ssr-server .
RUN chmod a+x start.sh
ENTRYPOINT ["/bin/sh","/root/start.sh"]
