# データベースを使用したアプリを開発する

## アプリを動かしてみる

`docker-compose up`{{execute T1}}

## データベースの設定

### テーブルの作成

以下のコマンドを実行し、テーブルの作成を行う

`docker-compose run web python create_table.py` {{execute T2}}

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

確認が終わったら、以下のコマンドでデータベースから出る

`exit;`{{execute T2}}

再度以下のコマンドを実行し、データベースのコンテナから出る
`exit;`{{execute T2}}
