FROM alpine:3.14.1

ENV http_proxy 'http://proxy.local:8080'
ENV https_proxy 'http://proxy.local:8080'
ENV no_proxy 'localhost, 127.0.0.1, 169.254.169.254, 10.200.0.1, 100.64.0.1, .svc.cluster.local, .iptho.co.uk, .ebsa.local, .ipttools.info, .bics-collaboration.homeoffice.gov.uk'

RUN apk add --update --no-cache ca-certificates bash curl && \
    apk upgrade