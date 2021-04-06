# TODO ボットを立ち上げる

## コンテナ(仮想環境)を起動する

以下のコマンドでアプリの実行に必要なコンテナを立ち上げる

`docker-compose up`{{execute T1}}

## テーブルの作成

以下のコマンドを実行し、別ターミナルを立ち上げる

`echo "launch Terminal2"`{{execute T2}}

以下のコマンドを実行し、テーブルの作成を行う

`cd ~/liff-todo-app && docker-compose run web python create_table.py`{{execute T2}}

上記で実行した`create_table.py`では事前に設計したテーブルをデータベースに作成している。

### 作成したテーブルについて

今回設計したテーブルの構造は以下の表になる。

| カラム名    | 型       | Null 許可 | key     | デフォルト        | 備考                |
| ----------- | -------- | :-------: | ------- | ----------------- | ------------------- |
| id          | int      |           | primary |                   | 各レコード固有の ID |
| user_id     | string   |           |         |                   | LINE のユーザー ID  |
| is_progress | bool     |           |         | TRUE              | タスクの完了/未完了 |
| todo_detail | string   |     ○     |         |                   | タスクの詳細        |
| created_at  | datetime |           |         | current_timestamp | 作成日時            |

### テーブルの確認

作成したテーブルの構造を確認するためにデータベースのコンテナに入る

`docker-compose exec db bash`{{execute T2}}

コンテナに入ったらデータベースに接続する

`cd /code && psql "postgresql://db:5432/todo?user=postgres&password=postgres"`{{execute T2}}

以下のコマンドでテーブルの構造を確認する

`\d user_todo`{{execute T2}}

以下のテーブル構造が表示されればテーブル作成は完了できている

```
                                         Table "public.user_todo"
   Column    |            Type             | Collation | Nullable |                Default
-------------+-----------------------------+-----------+----------+---------------------------------------
 id          | integer                     |           | not null | nextval('user_todo_id_seq'::regclass)
 user_id     | character varying(255)      |           |          |
 is_progress | boolean                     |           |          | 't'
 todo_detail | character varying(255)      |           |          |
 created_at  | timestamp without time zone |           |          | CURRENT_TIMESTAMP
Indexes:
    "user_todo_pkey" PRIMARY KEY, btree (id)
```

## データベースを触ってみよう

テーブルが作成できたので、実際にデータを挿入して、簡単な Query でデータベースを触っていく

### サンプルデータを挿入

以下の Query を実行し、サンプルデータを挿入する

`\i ./insert_sample.sql`{{execute T2}}

ここでは`liff-todo-app/insert_sample.sql`を使ってサンプルデータを挿入している。

データの挿入には INSERT 文を使っている

### Query を実行する

テーブル内のレコードを確認するときには以下の Query を実行すると確認できる

`SELECT * FROM user_todo;`{{execute T2}}

`WHERE`句を追加すると絞り込み条件を指定してデータを取得できる。

以下の Query を実行すると`is_progress = 't(True)'`のレコードを取得する

`SELECT * FROM user_todo WHERE is_progress = 't';`{{execute T2}}

以下の Query を実行すると`id=3`の`is_progress`を `False` に変更する。

`UPDATE user_todo SET is_progress = 'f' WHERE id = 3;`{{execute T2}}

再度テーブルの中身を確認すると変更した値が反映されていることが確認できる

`SELECT * FROM user_todo;`{{execute T2}}

今回動かす TODO ボットはここまでで実行した Query を使ってデータベースの操作をしている。

次のページから TODO ボットを実際に動かしてみよう
