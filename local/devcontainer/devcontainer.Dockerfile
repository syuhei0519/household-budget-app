FROM mcr.microsoft.com/devcontainers/base:ubuntu

# 作業ディレクトリを設定
WORKDIR /workspace

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    curl git vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]