# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|user|string|null: false,unique: true|
### Association
- has_many :chat_spaces
- has_many :groups_users
- has_many :groups,through: group_users

## chat-spacesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|group|reference|null: false, foreign_key: true|
|user|reference|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :group

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group|referense|null: false,foreign_key:true|
|user|string|null: false,foreign_key:true|
### Association
- belong_to :group
- belong-to :user


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group-name|string|null: false,unique:true|
### Association
- has_many:group_users|
- has_many:users,through: groups_users|
- has_many:messages|