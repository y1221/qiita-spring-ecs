# ECS + GitHub Actions サンプルアプリ

> AWS・Docker・GitHub Actions を使用した、本番環境構築・デプロイに関する Qiita 記事用コンテナ化アプリケーション

## 📝 関連記事

- [【ECS + GitHub Actions】コンテナ化 Spring Boot アプリの本番環境を構築 [前編] - アプリ公開まで](https://qiita.com/okayu__11/items/bd4e6e9790501a5ea42d)
- [【ECS + GitHub Actions】コンテナ化 Spring Boot アプリの本番環境を構築 [後編] - CI/CD パイプライン構築](https://qiita.com/okayu__11/items/fafdabb74f7f484b7bb1)

## 🚀 クイックスタート

### 1. リポジトリのクローン

```bash
git clone https://github.com/y1221/qiita-spring-ecs.git
cd your-repo
```

### 2. アプリケーションの起動

#### 開発環境での起動

```bash
# ファイルの実行権限付与
chmod u+x mvnw

# 実行
./mvnw spring-boot:run
```

#### Docker を使用した起動

```bash
# ファイルの実行権限付与
chmod u+x mvnw

# パッケージング
./mvnw clean package

# 起動
docker compose up -d
```

```PowerShell
#またはWindowsの場合
.\run-app.ps1
```

### 3. アクセス

http://localhost:8080

## 🛠️ 技術スタック

### バックエンド

- **言語**: Java 21
- **フレームワーク**: Spring Boot 3.4.5
- **テンプレートエンジン**: Thymeleaf

### 開発ツール

- **ビルドツール**: Maven 3.9.9

### インフラ

- **クラウド**: AWS
- **コンテナ**: Docker & Docker Compose
- **CI/CD**: GitHub Actions

## 🏗️ システム構成

### 環境全体図

![環境構成](./docs/images/ecs-gha-environment-overview.png)

### AWS インフラ構成

![AWS構成](./docs/images/ecs-gha-aws-architecture.png)

## ⚙️ 前提条件

### 必要なソフトウェア

- **JDK**: 21 以上（開発時使用: JDK 21）
- **Docker**: 20.0 以上（開発時使用: Docker 27.3.1）

### 検証済み環境

- Ubuntu 24.04 LTS
- Windows 11 Home

## 👨‍💻 作者

**おかゆ**

<img src="./docs/images/icon.jpeg" alt="プロフィール" width="20%">

- GitHub: [@y1221](https://github.com/y1221)
- Qiita: [@okayu\_\_11](https://qiita.com/okayu__11)
- X: [@okayu\_\_11](https://twitter.com/okayu__11)
