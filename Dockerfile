FROM alpine:edge
LABEL maintainer Kenzo Okuda <kyokuheki@gmail.com>

RUN apk add --no-cache \
    iproute2 \
    quagga

VOLUME ["/etc/quagga", "/zebra"]
CMD ["/run.sh"]
