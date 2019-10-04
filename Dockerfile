FROM alpine:edge
LABEL maintainer Kenzo Okuda <kyokuheki@gmail.com>

RUN apk add --no-cache \
    iproute2 \
    quagga
COPY run.sh /run.sh
VOLUME ["/etc/quagga", "/zebra"]
CMD ["/run.sh"]
