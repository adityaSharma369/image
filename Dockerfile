# FROM golang as builder

FROM golang

#WORKDIR /app

# COPY ./ /go/src/tericai/go_annotation
# COPY ./common/ /go/src/tericai/common

COPY . .

RUN go build

# RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix .
# FROM alpine:latest
# WORKDIR /app/
# COPY --from=builder /go/src/tericai/go_annotation/go_annotation /app/go_annotation
# COPY --from=builder /go/src/tericai/go_annotation/.env /app/.env
# ENTRYPOINT ./go_annotation