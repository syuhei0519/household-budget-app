FROM jenkins/jenkins:lts

# root ユーザーに切り替え
USER root

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Jenkins プラグインのインストール
RUN jenkins-plugin-cli --plugins \
    pipeline-model-definition \
    workflow-aggregator \
    blueocean \
    git \
    github \
    docker-plugin \
    docker-workflow \
    kubernetes \
    ansicolor \
    credentials-binding \
    build-timeout \
    parameterized-trigger \
    pipeline-utility-steps \
    sonar

# Docker を Jenkins ユーザーで実行できるように設定
RUN groupadd -g 999 docker && \
    usermod -aG docker jenkins

# Jenkins のデフォルトポート
EXPOSE 8080

# Jenkins の起動コマンド
CMD ["jenkins.sh"]