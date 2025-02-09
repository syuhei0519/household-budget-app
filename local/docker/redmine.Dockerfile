FROM redmine:latest

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Redmine のマイグレーション実行
WORKDIR /usr/src/redmine
ENV BUNDLE_WITHOUT="development test"

RUN bundle install

# サーバ起動
CMD ["rails", "server", "-b", "0.0.0.0"]
