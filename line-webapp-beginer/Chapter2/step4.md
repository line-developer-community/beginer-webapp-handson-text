# TODO ボットを立ち上げる

## コンテナ(仮想環境)を起動する

以下のコマンドでアプリの実行に必要なコンテナを立ち上げる

`docker-compose up`{{execute T1}}

## データベースの設定

### テーブルの作成

以下のコマンドを実行し、別ターミナルを立ち上げる

`echo "launch Terminal2"`{{execute T2}}

以下のコマンドを実行し、テーブルの作成を行う

`cd ~/liff-todo-app && docker-compose run web python create_table.py`{{execute T2}}

### テーブルの確認

作成したテーブルの構造を確認するためにデータベースのコンテナに入る

`docker-compose exec db bash`{{execute T2}}

コンテナに入ったらデータベースに接続する

`psql "postgresql://db:5432/todo?user=postgres&password=postgres"`{{execute T2}}

以下のコマンドでテーブルの構造を確認する

`\d user_todo`{{execute T2}}

以下のテーブル構造が表示されればテーブル作成は完了できている

```
                                         Table "public.user_todo"
   Column    |            Type             | Collation | Nullable |                Default
-------------+-----------------------------+-----------+----------+---------------------------------------
 id          | integer                     |           | not null | nextval('user_todo_id_seq'::regclass)
 user_id     | character varying(255)      |           |          |
 is_progress | boolean                     |           |          |
 todo_detail | character varying(255)      |           |          |
 created_at  | timestamp without time zone |           |          |
 updated_at  | timestamp without time zone |           |          | CURRENT_TIMESTAMP
Indexes:
    "user_todo_pkey" PRIMARY KEY, btree (id)
```

## データベースを触ってみよう

テーブルが作成できたので、実際にデータを挿入してみる。

以下の Query を実行し、仮データを挿入する

`INSERT INTO "public"."user_todo" ("user_id", "is_progress", "todo_detail", "created_at", "updated_at") VALUES ('deadbeafdeadbeafdeadbeaf', 't', 'サンプルコード作成', '2021-03-14 23:18:27', '2021-03-14 14:18:36.031574'), ('deadbeafdeadbeafdeadbeaf', 'f', 'メールチェック', '2021-03-15 13:30:05', '2021-03-15 13:32:29.204017'), ('deadbeafdeadbeafdeadbeaf', 't', 'おやつ', '2021-03-15 15:30:00', '2021-03-15 15:30:00.204017');`{{execute T2}}

テーブル内のレコードを確認するときには以下の Query を実行すると確認できる

`SELECT * FROM user_todo;`{{execute T2}}

`WHERE`句を追加すると絞り込み条件を指定してデータを取得できる。以下の Query を実行すると`is_progress = 't(True)'`のレコードを取得する

`SELECT * FROM user_todo WHERE is_progress = 't'`{{execute T2}}
