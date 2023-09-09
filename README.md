# このプロジェクトについて About this project
このプロジェクトはVSCodeでSQLFluffとdbtを組み合わせた環境をテストするためのものです。VSCodeのDevcontainer拡張機能を利用してSQLFluffがセットアップされた環境に入ることができます。dbtと連携するためにPostgreSQLのコンテナも一緒にdocker-composeで起動します。

This project is for testing a combined SQLFluff and dbt environment in VSCode. You can use VSCode's Devcontainer extension to enter an environment with SQLFluff set up. To work with dbt, PostgreSQL container is also started together with docker-compose.


# テスト済みの環境 Tested Environment
- Windows 11 Home 22H2
- WSL2 v1.2.5.0
  - Ubuntu 22.04.3 LTS
    - git v2.34.1
    - docker v24.0.5
    - docker compose v2.20.2-desktop.1
- Docker Desktop v4.22.0
- VSCode v1.81.1
  - Extensions
    - Dev Containers
    - WSL
    - (Option) Docker


# 利用方法 How to use
## 初回のセットアップ Initial Setup
WSL内にプロジェクトをクローンする

Clone the project in WSL

```
git clone https://github.com/jimatomo/sqlfluff_postgresql.git
```



VSCodeでコマンドパレットを開き、「開発コンテナー: コンテナーでフォルダーを開く...」を実行する。
開くディレクトリはクローンしたルートのディレクトリを指定する。


In VSCode, open the command palette and select ```Dev Containers: Open Folder in Container...```. The directory to be opened is the root directory of the cloned folder.


## 停止方法 How to stop
VSCodeのリモート接続を停止すれば停止する。

If the remote connection to VSCode is stopped, it will stop.


## 終了方法 How to clean

削除対象のコンテナをDocker DesktopまたはCLIで削除する。その後イメージとボリュームも削除する。

Delete the container to be deleted using Docker Desktop or CLI. Then delete the images and volumes.

- container: SQLFluff
  - container name: sqlfluff_dbt
  - image name: sqlfluff_postgresql_devcontainer-sqlfluff-dbt:latest
  - volume name: sqlfluff_postgresql_devcontainer_sqlfluff-dbt-volume
- container: PostgreSQL
  - cotainer name: sqlfluff_postgres
  - image name: sqlfluff_postgresql_devcontainer-sqlfluff-postgres:latest
  - volume name: sqlfluff_postgresql_devcontainer_sqlfluff-postgres-volume

# 動作確認方法 How to test
好きなSQLを書いてみて試してみる。
サンプルのdbtのseedファイルなどをそのまま残しているので試してみるといい。

Try writing any SQL you like and test it out.
I've left the sample dbt seed file and other files intact so you can try it out.


# SQLFluffのルールについて About SQLFluff Rules
https://speakerdeck.com/jimatomo/sqlfluff-rules

Zennにも記事を書いています。

https://zenn.dev/jimatomo/articles/4995a29d4b4a8f

