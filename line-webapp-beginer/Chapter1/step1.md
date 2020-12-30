# 簡単な Web アプリを動かす

## アプリを動かしてみる

`python3 step1/app.py`{{execute}}

## GET と POST の動作確認

### GET の確認

ブラウザで以下の URL を開く
`https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}

### POST の確認

もう一つターミナルを開いて以下の Curl コマンドを実行

`curl http://localhost:5000/send -X POST -H "Content-Type: application/json" --data '{"value": "Hello World!"}'`{{execute}}

`Ctrl + C`でアプリを止める
