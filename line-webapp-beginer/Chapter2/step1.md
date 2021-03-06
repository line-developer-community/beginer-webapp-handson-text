# Bot チャネルの作成・設定

## LINE Developers にログイン

[LINE Developers](https://developers.line.biz/ja/) にアクセスしてログイン

![login console](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/login_console.png)

## プロバイダーを選択

任意のプロバイダーを選択

### プロバイダーを未作成の場合

プロバイダー一覧画面の中の「作成」ボタンを押下して新規作成する

- 任意のプロバイダー名で作成する
- 文字列の中に`LINE`は含められない

![providers](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/providers.png)

## LINE bot のチャネルを作成

プロバイダーを選択したら Bot のチャネルを作成する

![channels](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/channels.png)

「Messaging API」を選択

![categories](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/categories.png)

チャネル情報を入力する

- 任意以外の項目はすべて入力する
- チャネル名には`LINE`を含められない

![categories](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/new_channel.png)

利用規約に同意して「作成」をクリック

![agreements](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/agreements.png)

「同意する」をクリック

![agreement_policy](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/agreement_policy.png)

## Webhook の設定

- 「Messaging API 設定」タブの「Webhook 設定」の Webhook URL には以下を設定する

`https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/callback`{{copy}}

## 自動応答を無効にする

- 「LINE 公式アカウント機能」の項目にある応答メッセージは無効にするために「編集」をクリックする

![agreement_policy](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/auto_reply.png)

## .env ファイルに記載する変数のメモ

「Messaging API 設定」タブの一番下にあるチャネルアクセストークンをメモする

![access_token](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/access_token.png)

「チャネル基本設定」タブの下の方にあるチャネルシークレットをメモする

![channel_secret](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/channel_secret.png)

## .env の設定

IDE タブを開き`liff-todo-app/.env`に先程メモした以下の内容を記入する

| 項目名                 | 値                           |
| :--------------------- | :--------------------------- |
| `CHANNEL_ACCESS_TOKEN` | （チャネルアクセストークン） |
| `CHANNEL_SECRET`       | （チャネルシークレット）     |
