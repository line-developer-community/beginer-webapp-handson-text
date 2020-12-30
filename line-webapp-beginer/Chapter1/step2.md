# Bot チャネルの作成・設定

## LINE Developers にログイン

[LINE Developers](https://developers.line.biz/ja/) にアクセスしてログイン
![login console](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/login_console.png)

## プロバイダーを選択

任意のプロバイダーを選択

### プロバイダーを未作成の場合

プロバイダー一覧画面の中の「作成」ボタンを押下して新規作成する

- 任意のプロバイダー名で作成します
- 文字列の中に`LINE`は含められません

![providers](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/providers.png)

## LINE bot のチャネルを作成

プロバイダーを選択したら Bot のチャネルを作成する
![channels](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/channels.png)

「Messaging API」を選択
![categories](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter1/images/categories.png)

## Webhook の設定

- Webhook URL には以下を設定する

`https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/linebot`{{copy}}
