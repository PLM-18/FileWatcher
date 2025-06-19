FROM golang:1.24.2 as builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o watcher main.go

FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/watcher ./

# Set the default command (can be overridden)
ENTRYPOINT ["/app/watcher"]
CMD ["/watched/file/path"]
