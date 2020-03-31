FROM golang:alpine

LABEL maintainer Filip S <filips@vaskir.co>

RUN apk add git apache2
RUN go get -u github.com/raviqqe/muffet
