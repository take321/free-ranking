# テーブル設計

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
| rank_number           | integer | null: false |
| title                 | string  | null: false |
| text                  | string  |             |
| rank_id               | integer | null: false |

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