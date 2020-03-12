# README

# Travel Push!!
・概要(このアプリでできることを書いて下さい)
・本番環境(デプロイ先　テストアカウント＆ID)
・制作背景(意図)
　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
・工夫したポイント
・使用技術(開発環境)
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
