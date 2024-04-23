FROM registry.access.redhat.com/ubi9/ubi

LABEL maintainer="3scale system team <3scale@redhat.com>"
LABEL org.opencontainers.image.title="dnsmasq",
LABEL org.opencontainers.image.source="https://github.com/3scale-labs/dnsmasq"
LABEL org.opencontainers.image.vendor="3scale"

RUN dnf -y install dnsmasq
EXPOSE 53 67 69
ENTRYPOINT ["/usr/sbin/dnsmasq"]

