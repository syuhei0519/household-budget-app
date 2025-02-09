FROM golang:1.21

WORKDIR /app

# モジュールキャッシュを活用するために go.mod と go.sum を先にコピー
COPY backend/go.mod backend/go.sum ./
RUN go mod tidy && go mod download

# ソースコードをコピー
COPY . .

WORKDIR /app/src

# Gin のホットリロード用 air をインストール
RUN go install github.com/cosmtrek/air@v1.43.0

EXPOSE 8080

CMD ["air"]