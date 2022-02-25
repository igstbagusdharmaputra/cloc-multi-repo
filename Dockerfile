FROM alpine:3.11

RUN apk add --no-cache cloc bash git

WORKDIR /data