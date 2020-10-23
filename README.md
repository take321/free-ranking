# アプリ名:free ranking

# 概要
自分のこだわりが詰まった自分だけのランキングを作ることができ、それを投稿することができる。

# 制作背景
評価の高いものを自分で調べるよりも、人からいくつか候補を挙げて魅力を紹介してもらったほうがより効率よく好きなものを探せると普段の生活の中で感じました。
そのいくつか候補を挙げて、魅力を紹介してもらうという行為は結構な手間がかかるので、それを気軽に作れるようにできるアプリがあればいいなと考えました。

# DEMO
## ランキング一覧画面
![](https://i.gyazo.com/a4d36b800fc69eca8f32b2422a7f015d.png)
## ランキング新規投稿画面
![](https://i.gyazo.com/80671af07d1c7fbaab58b3c1ea159421.png)

# 実装予定の内容
・カテゴリー分類機能
・検索機能
・コメント機能
・画像アップロード機能
・編集、削除機能
・ユーザー詳細機能
・いいね機能


# DB設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| email                 | string | null: false |
| encrypted_password    | string | null: false |

### Association

- has_many :ranks
- has_many :comments

## ranks テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| title                 | string  | null: false |
| text                  | string  |             |
| category_id           | integer |             |
| user_id               | integer | null: false |

### Association

- has_many :rank_numbers
- has_many :comments
- belongs_to :user

## rank_numbers テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| rank_number_id        | integer | null: false |
| rank_title            | string  | null: false |
| rank_text             | string  |             |
| rank_id               | integer |             |

### Association

- belongs_to :rank

## comments テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| text                  | string  | null: false |
| user_id               | integer | null: false |
| rank_id               | integer | null: false |

### Association

- belongs_to :rank
- belongs_to :user