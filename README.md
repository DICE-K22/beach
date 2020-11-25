#  Finding the Beach

[![Image from Gyazo](https://i.gyazo.com/c329cf51df6821bf33b420eba17176d8.gif)](https://gyazo.com/c329cf51df6821bf33b420eba17176d8)

##  概要

「Finding the Beach」は、世界中のビーチのレビューサイトです。
ビーチに訪れたユーザーが最新の状況をレビューすることで、これからそのビーチに訪れる予定の人がそのレビューから最新の状況を得ることができます。

###  Finding the Beach サイトURL

デプロイ先：heroku

https://finding-the-beach.herokuapp.com/

###  テストアカウント

ユーザー名：Test
パスワード：tttttt


##  制作背景

僕の趣味は海外旅行で、旅先でビーチに訪れることが多いです。しかし、出発前にビーチの情報を調べても、ざっくりした情報が多いと感じます。詳しい情報は複数の旅行サイトに散らばっていて、それを一個一個見ていくのは手間だと感じました。さらにこれらの情報は古いことが多かったです。様々なレビューサイトがありますが、調べてもビーチ専門のレビューサイトは存在しなかったので専門サイトを作れば、いくつものサイトを転々とする必要もないですし、最新の情報も手に入れられるのではないかと考えたのがきっかけです。

##  機能

- 新規投稿
- 投稿検索
- コメント
- 投稿削除
- ログイン・ログアウト

##  課題

レビューを投稿してくれるユーザーがいなければアプリケーションとして成り立たない。

#  テーブル設計

##  users テーブル

| Column         | Type    | Options     |
|----------------|---------|-------------|
| username       | string  | null: false |
| country        | string  | null: false |
| password       | string  | null: false |
| email          | string  | null: false |

###  Association

- has_many :reviews
- has_many :comments

##  reviews テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| title            | string     | null: false                    |
| place            | string     | null: false                    |
| date_of_visiting | date       | null: false                    |
| pros             | text       |                                |
| cons             | text       |                                |
| type_of_visitor  | integer    | null: false                    |
| type_of_beach    | integer    | null: false                    |
| color_of_sand    | integer    | null: false                    |
| cleanliness      | integer    | null: false                    |
| transparency     | integer    | null: false                    |
| quietness        | integer    | null: false                    |
| crowd            | integer    | null: false                    |
| street_vendor    | integer    | null: false                    |
| shop             | integer    | null: false                    |
| toilet           | integer    | null: false                    |
| shower           | integer    | null: false                    |
| recommended      | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

###  Association

- belongs_to :user
- has_many :comments

##  comments テーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| review  | references | null: false, foreign_key: true |

###  Association

- belongs_to: user
- belongs_to: review