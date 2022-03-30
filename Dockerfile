FROM debian

RUN apk add --update zstd-static zstd-dev make gcc musl-dev git
RUN go get golang.org/x/lint/golint
RUN mkdir -p /go/src/github.com/gdd3/chproxy
WORKDIR /go/src/github.com/gdd3/chproxy
COPY . ./
RUN make release-build

FROM alpine
COPY --from=build /go/src/github.com/gdd3/chproxy/chproxy /chproxy
ENTRYPOINT [ "/chproxy" ]

CMD [ "--help" ]
