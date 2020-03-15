# README

# Travel Push!!
・概要 
  観光地情報をユーザーが投稿し、観光地情報を共有できるサービス
・本番環境(デプロイ先 テストアカウント＆ID)
  URL:https://travel-push.herokuapp.com/
  テストアカウント
  ID a@a
  PW 12345678
・制作背景
  添乗員時代仕事の関係で日本各地の観光施設を訪れました。各地を訪れることでプライベート旅行で観光地を選択するポイントが変化しました。現在は、改修工事や復旧工事を行っている観光地を訪れ、滅多に見れない貴重な時期に立ち会うことに魅力を感じております。こういった情報が、共有できる環境を構築することで一生に一度しか見れない貴重な瞬間を見落とすことがなくなるのではないかと思いこのサービスを作成しました。
・工夫したポイント
・使用技術(開発環境)
  （Haml・SCSS・Ruby・Ruby on Rails、Heroku）
・課題や今後実装したい機能

# Travel Push!! DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :informations
- has_many :comments

## informationsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|position|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|information_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :informations
- belongs_to :user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
