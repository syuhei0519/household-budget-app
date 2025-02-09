📦 household-budget-app/  # メインリポジトリ（アプリ & CI/CD & Redmine）
├── 📂 backend/           # バックエンド（Go / Node.js）
│   ├── 📂 src/           # API ソースコード
│   ├── 📂 config/        # 設定ファイル
│   ├── 📂 tests/         # テストコード
│   ├── Dockerfile        # バックエンド用 Dockerfile
│   ├── go.mod / package.json  # 依存関係管理
│   ├── Makefile          # コマンド管理
│   ├── README.md         # 説明書
│   ├── .env.example      # 環境変数サンプル
│   ├── openapi.yaml      # OpenAPI 定義
│   └── Jenkinsfile       # CI/CD パイプライン
│
├── 📂 frontend/          # フロントエンド（Next.js）
│   ├── 📂 src/           # UI ソースコード
│   ├── 📂 components/    # React コンポーネント
│   ├── 📂 tests/         # UI テストコード
│   ├── 📂 public/        # 静的ファイル
│   ├── 📂 styles/        # CSS / Tailwind
│   ├── Dockerfile        # フロントエンド用 Dockerfile
│   ├── package.json      # 依存関係管理
│   ├── Makefile          # コマンド管理
│   ├── README.md         # 説明書
│   ├── .env.example      # 環境変数サンプル
│   └── Jenkinsfile       # CI/CD パイプライン
│
├── 📂 infra/             # インフラ管理（IaC）
│   ├── 📂 terraform/     # Terraform 設定
│   │   ├── main.tf       # VNet / VM / SQL / Peering 設定
│   │   ├── variables.tf  # 変数定義
│   │   ├── outputs.tf    # 出力定義
│   │   ├── providers.tf  # Azure / Kubernetes 設定
│   │   ├── Makefile      # インフラ管理コマンド
│   │   ├── README.md     # 説明書
│   │   └── terraform.tfstate  # 状態管理（Git 管理外）
│   ├── 📂 k8s/           # Kubernetes マニフェスト
│   │   ├── backend.yaml  # バックエンド用 Deployment
│   │   ├── frontend.yaml # フロントエンド用 Deployment
│   │   ├── ingress.yaml  # Ingress 設定
│   │   ├── 📂 argocd     # ArgoCD
│   │   │   ├── install.yaml # Argo CD のインストール用マニフェスト
│   │   │   ├── applications.yaml #
│   │   ├── Makefile      # K8s 管理コマンド
│   │   ├── README.md     # 説明書
│   │   └── secrets.yaml  # 機密情報（Git 管理外）
│   ├── Jenkinsfile       # インフラ CI/CD
│   ├── Makefile          # 環境構築コマンド
│   ├── README.md         # 説明書
│   └── .gitignore        # 除外ファイル設定
│
├── 📂 ci-cd/             # CI/CD（Jenkins）
│   ├── 📂 pipelines/     # パイプライン定義
│   │   ├── backend.groovy  # バックエンドの Jenkins パイプライン
│   │   ├── frontend.groovy # フロントエンドの Jenkins パイプライン
│   │   ├── infra.groovy    # インフラの Jenkins パイプライン
│   ├── 📂 scripts/       # 自動化スクリプト
│   │   ├── deploy.sh     # デプロイ用スクリプト
│   │   ├── test.sh       # テスト実行スクリプト
│   │   ├── cleanup.sh    # リソース削除スクリプト
│   ├── README.md         # CI/CD 設定の説明
│   ├── Jenkinsfile       # Jenkins メイン設定
│   └── .gitignore        # 除外ファイル設定
│
├── 📂 local/             # ローカル開発環境 & Redmine
│   ├── 📂 docker/        # Docker Compose 設定
│   │   ├── docker-compose.yml  # 全体管理
│   │   ├── backend.Dockerfile  # バックエンド
│   │   ├── frontend.Dockerfile # フロントエンド
│   │   ├── jenkins.Dockerfile  # CI/CD
│   │   ├── redmine.Dockerfile  # Redmine
│   ├── 📂 devcontainer/  # VS Code Dev Containers
│   │   ├── devcontainer.json  # Dev Containers 設定
│   ├── 📂 redmine/       # Redmine 用ディレクトリ
│   │   ├── docker-compose.override.yml  # Redmine 専用設定
│   │   ├── backup/       # Redmine バックアップ
│   │   ├── .env          # Redmine 環境変数
│   │   ├── README.md     # Redmine の管理方法
│   ├── Makefile          # ローカル環境起動コマンド
│   ├── README.md         # 説明書
│   └── .gitignore        # 除外ファイル設定
│
└── README.md             # プロジェクト全体の説明