FROM alpine

ARG PB_VERSION=0.22.20

RUN apk add --no-cache \
    unzip \
    ca-certificates

ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_arm64.zip /tmp/pb.zip

RUN unzip /tmp/pb.zip -d /pb/

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]

EXPOSE 8090
