FROM mcuadros/ofelia:latest AS ofelia

FROM alpine:latest

COPY --from=ofelia /usr/bin/ofelia /usr/bin/ofelia

RUN apk --no-cache add rsnapshot ca-certificates

ENTRYPOINT ["/usr/bin/ofelia"]

CMD ["daemon", "--config", "/etc/ofelia.ini"]
