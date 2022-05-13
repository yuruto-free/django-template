# Django-template
個人的に考えるDjangoのベストプラクティスをtemplateとしてまとめた。

## 準備
以下のコマンドを実行し、Djangoで利用する`static`ディレクトリを更新する。

```sh
docker-compose run --rm web_server python manage.py collectstatic
```

## 使い方
### ビルド
以下のコマンドを実行する。

```sh
docker-compose build
```

### 起動
以下のコマンドを実行する。

```sh
docker-compose up -d
```

### アクセス
* Webブラウザで以下のリンクを起動する。

    ```sh
    # 同一PC上からアクセスする場合
    http://localhost:3000/admin/
    # Raspberry Piなど別のマシンからアクセスする場合
    http://ip-address:3000/admin/ # ip-addressは環境に合わせて設定すること
    ```

* `curl`コマンドを用いて以下のコマンドを実行する

    ```sh
    # 同一PC上からアクセスする場合
    curl -L http://localhost:3000/admin/
    # Raspberry Piなど別のマシンからアクセスする場合
    curl -L http://ip-address:3000/admin/ # ip-addressは環境に合わせて設定すること
    ```
