FROM alpine

RUN apk update --no-cache
RUN apk add --no-cache bash
RUN apk add --no-cache curl

WORKDIR /usr/bin/
COPY /hello/hello .

EXPOSE 8080
EXPOSE 9090
EXPOSE 9091

USER 1001

ENTRYPOINT "/usr/bin/app"
