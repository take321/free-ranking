# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| email                 | string | null: false |
| encrypted_password    | string | null: false |

### Association

- has_many :rankings
- has_many :comments

## rankings テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| title                 | string  | null: false |
| text                  | string  |             |
| category_id           | integer |             |
| user_id               | integer | null: false |

### Association

- has_many :ranks
- has_many :comments
- belongs_to :user

## ranks テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| rank_number           | integer | null: false |
| title                 | string  | null: false |
| text                  | string  |             |
| ranking_id            | integer | null: false |

### Association

- belongs_to :ranking

## comments テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| text                  | string  | null: false |
| user_id               | integer | null: false |
| ranking_id            | integer | null: false |

### Association

- belongs_to :ranking
- belongs_to :user