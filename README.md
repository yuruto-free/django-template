# Django-template
個人的に考えるDjangoのベストプラクティスをtemplateとしてまとめた。

## 準備
以下のコマンドを実行し、Djangoで利用する`static`ディレクトリを更新する。

```sh
docker-compose run --rm web_server python manage.py collectstatic
```
