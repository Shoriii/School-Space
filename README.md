
# School-Space -スクスペ-
URL:https://13.230.223.61/

## 概要
誰でも気軽に近くの学校施設でスポーツが楽しめる「学校に特化した施設予約サイト」です。
カレンダーを見て空いてる日や時間帯を予約できます。
※架空の施設を扱っています。

## 制作に至った背景
- 公立学校のIT技術不足
```
民間スポーツ施設は、ネット予約システムが確率していますが、公立学校のスポーツ施設(体育館など)は紙媒体での予約が多い現状があります。
```
- 少子高齢化と学校施設の開放
```
近年の少子高齢化により、文部科学省では地域活性化のための１つとして学校施設の解放を促進させており、学校開放率（体育館）は9割を超えています。
```

## 機能
- 認証
- 予約
- カレンダー
- お気に入り（非同期通信）
- コメント（非同期通信）
- Bootstrap
- 画像アップロード
- ソート
- 検索
- 評価/レビュー

## 使用技術
### 言語・FW
-ruby 2.5.7
-Rails 5.2.4.1
-Javascript / jQuery
### 開発環境
Vagrant + VirtualBox
### インフラ
AWS(EC2、RDS、ELB)、MySQL2、Nginx(WEBサーバ)
### その他gemなど
-fullcalendar-rails(カレンダー)
-I18n (日本語化)
-devise (認証機能)
-refile / refile_mini_magic (画像投稿)
-kaminari (ページネーション)
-ransack (検索、ソート)
-bootstrap4
-font-awesome
-Google Fonts
-paranoia（論理削除）

## インストール
```
$ git clone https://github.com/Shoriii/School-Space.git
$ cd School-Space
$ bundle install
$ rails db:migrate
$ rails db:seed
```
