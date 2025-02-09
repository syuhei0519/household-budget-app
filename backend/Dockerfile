# 1. ビルドステージ
FROM golang:1.21 AS builder
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o main .

# 2. 実行ステージ（軽量な alpine を使用）
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]