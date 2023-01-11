# README


# テーブル設計

## usersテーブル

| Column             |  Type      |  Options  |  others    |
|--------------------|------------|-----------|------------|
| email              | string     | nul:false | ユニーク制約 |
| encrypted_password | string     | nul:false |            |
| name               | string     | nul:false |            |
| profile            | text       | nul:false |            |
| occupation         | text       | nul:false |            |
| position           | text       | nul:false |            |

### Association

has_many :prototypes
has_many :comments


## prototypesテーブル

| Column             |  Type      |  Options                     |  others    |
|--------------------|------------|------------------------------|------------|
| title              | string     | nul:false                    |            |
| catch_copy         | text       | nul:false                    |            |
| concept            | text       | nul:false                    |            |
| user               | references | nul:false, foreign_key: true |            |

※imageはActiveStorageで実装する為、含まない

### Association

has_many :comments
belongs_to :user


## commentsテーブル

| Column             |  Type      |  Options                     |  others    |
|--------------------|------------|------------------------------|------------|
| content            | string     | nul:false                    |            |
| prototype          | references | nul:false, foreign_key: true |            |
| user               | references | nul:false, foreign_key: true |            |

### Association

belongs_to :user
belongs_to :comment

