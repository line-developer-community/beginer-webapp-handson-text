# LIFF アプリの用意

## LIFF のチャネルを作成

LINE bot と同様に LIFF のチャネルを作成する

**※必ず Messaging API のチャネルを作成したときと同じチャネルで作成する**

「LINE ログイン」を選択

![channels](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/login_channel.png)

チャネル情報を入力する

- アプリタイプは「ウェブアプリ」を選択する
- 他は任意のもので設定して OK

![channel_setting](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/line_login_channel.png)

## LIFF URL を設定

LIFF タブをクリックして、LIFF アプリを追加する

![liff_app](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/LIFF_app.png)

LIFF の情報を設定する

![liff_setting](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/LIFF_setting.png)

エンドポイント URL には以下を設定する

`https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}

scope は`openid`、ボットリンク機能は`On(Normal)`を選択する

![scope_link](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/scope_link.png)
