FROM golang:1.20.0-alpine3.17

RUN apk add --no-cache --upgrade \
    bash \
    curl \
    make \    
    grep \
    g++ \
    git \
    && curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.51.1 \
    && go install github.com/matryer/moq@v0.3.0