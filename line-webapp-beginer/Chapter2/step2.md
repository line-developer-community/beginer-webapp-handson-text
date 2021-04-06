# LIFF アプリの用意

## LIFF のチャネルを作成

LINE bot と同様に LIFF のチャネルを作成する

**※必ず Messaging API のチャネルを作成したときと同じプロバイダーで作成する**

「LINE ログイン」を選択

![channels](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/login_channel.png)

チャネル情報を入力する

- アプリタイプは「ウェブアプリ」を選択する
- 他の必須項目は任意のものを設定する

![channel_setting](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/line_login_channel.png)

## LIFF アプリ を設定

LIFF タブをクリックして、LIFF アプリを追加する

![liff_app](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/LIFF_app.png)

LIFF の情報を設定する

![liff_setting](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/LIFF_setting.png)

エンドポイント URL には以下を設定する

`https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}

scope は`openid`、ボットリンク機能は`On(Normal)`を選択する

![scope_link](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/scope_link.png)

他の必須項目は任意のものを設定したら「作成」をクリックする

## .env ファイルに記載する変数のメモ

「LIFF」タブの LIFF アプリ一覧から、先程作成した LIFF の`LIFF ID`及び`LIFF URL`をメモする

![liff_apps](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/LIFF_app_list.png)

「チャネル基本設定」タブの上にあるチャネル ID をメモする

![channel_id](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/channel_id.png)

## .env の設定

IDE タブを開き`liff-todo-app/.env`に先程メモした以下の内容を記入する

| 項目名            | 値                                             |
| :---------------- | :--------------------------------------------- |
| `LIFF_ID`         | （LIFF ID）                                    |
| `LIFF_CHANNEL_ID` | （LIFF を設定した LINE ログインのチャネル ID） |
