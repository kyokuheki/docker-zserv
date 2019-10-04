FROM alpine:edge
LABEL maintainer Kenzo Okuda <kyokuheki@gmail.com>

RUN apk add --no-cache \
    iproute2 \
    quagga
VOLUME ["/zebra"]
CMD ["/usr/sbin/zebra", "--config_file", "/dev/null", "--socket", "/zebra/zserv.api"]
