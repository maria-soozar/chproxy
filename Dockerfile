FROM debian

RUN apk add --update zstd-static zstd-dev make gcc musl-dev git
RUN go get golang.org/x/lint/golint
RUN mkdir -p /go/src/github.com/maria-soozar/chproxy
WORKDIR /go/src/github.com/maria-soozar/chproxy
COPY . ./
RUN make release-build

FROM alpine
COPY --from=build /go/src/github.com/maria-soozar/chproxy/chproxy /chproxy
ENTRYPOINT [ "/chproxy" ]

CMD [ "--help" ]
