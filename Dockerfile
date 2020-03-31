FROM golang:alpine

RUN apk add git apache2
RUN go get -u github.com/raviqqe/muffet
