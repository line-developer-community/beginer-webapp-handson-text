# 動作確認

## ボットにタスクを追加する

ボットを友だち追加したらボットを開いて、何かタスクをメッセージで送信してみる。

送信すると「タスクを追加しました」とボットに返答される。

![todo_bot](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/todo_bot.jpg)

## TODO リストを表示する

リッチメニューをタップして TODO リストを開く。

TODO リストを立ち上げると登録したタスクが表示される。

![todo](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/todo.jpg)

## タスクを完了にさせる

各タスクにあるチェックボックスにチェックを入れると下に`選択したリストを完了済みにする`ボタンが表示される。

![todo_bot](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/todo_checked.jpg)

これをタップするとチェックを入れたタスクが完了済みとして登録されて、TODO リスト上では非表示になる。

![todo_bot](https://raw.githubusercontent.com/line-developer-community/beginer-webapp-handson-text/master/line-webapp-beginer/Chapter2/images/todo_after.jpg)

## データの中身を確認する

登録されたデータは、前のページで紹介した以下の Query を実行することで登録されたデータを確認できる。

`SELECT * FROM user_todo;`{{execute T2}}

### データについてちょっと解説

完了済みにしたタスクは`is_progress`の値が `f(False)`になっている。(削除をしているわけではない)

つまり TODO リストには`is_progress`の値が `t(True)`の未完了タスクが一覧として表示されている。
