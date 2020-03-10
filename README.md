# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|name|string|null: false,unique: true|
### Association
- has_many :messsages
- has_many :groups_users
- has_many :groups,through: groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|group|reference|null: false, foreign_key: true|
|user|reference|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group|referense|null: false,foreign_key:true|
|user|referense|null: false,foreign_key:true|
### Association
- belong_to :group
- belong-to :user


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique:true|
### Association
- has_many:groups_users|
- has_many:users,through: groups_users|
- has_many:messages|