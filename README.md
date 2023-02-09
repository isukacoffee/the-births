# アプリ名
**The-Birth**

## 概要


- The-Birthは年に一度しか訪れない、大切な人に贈る40〜50代向けの誕生日プレゼント管理アプリケーションです。  

## 開発環境


- ruby: 2.6.5  
- Rails: 6.0.0

## 制作背景
---
### 開発の意図

- 50代前後の方に誕生日アプリについてヒアリングし、まとめてみました。  

1. 現存する誕生日アプリは、比較的若者向けが多い印象。  
2. 誕生日の管理を頭の中で行っており、アプリ自体を探していない。


## 課題に対しての解決方法

- シンプルで見やすく扱いやすいのが大前提と思いました。  
- 具体的には  
  ①. 文字のフォントサイズ調整をできるようにする。（小・中・大の３パターン）  
  ②. メイン画面には淡色を使用し、視覚的にも扱いやすさをアピール。  
  ③. 誕生日には一言メッセージを、色紙風なテンプレートに自動反映され送れるようにする。（会員・未会員問わず）  
  ④. カレンダーで一覧表示を行い、誕生日当日にはユーザーが任意の色で変更できるようにする。（誕生日情報はLINEと同期）
  ⑤. 誕生日を保存すると、誕生日を迎える人の誕生日までのカウントダウン（１ヶ月前)・名前・日付が表示されるようにする。
  
  
  ③.④はアジャイル開発として段階的に実装予定。

## 機能

- 誕生日管理機能  
- 写真投稿機能  
- 色紙生成管理機能

## 開発着手時期（予定）

- 開発優先順位

1. ユーザー認証機能（新規登録・ログイン）

2. 誕生日管理機能

3. 写真投稿管理機能

4. 写真詳細閲覧機能

5. 色紙生成管理機能

2023年3月実装完了予定

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| nickname_kana      | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association

- has_many :birthdays
- has_many :pictures
- has_many :color_papers
- has_many :comments

## birthdays テーブル

| Column                | Type        | Options     |
| ------------------    | ------      | ----------- |
| date                  | date        | null: false |
| user                  | references  | null: false, foreign_key: true |
| celebrate_person_name | string      | null: false |

### Association

- belongs_to :user
- has_many :pictures
- has_many :color_papers
- has_many :comments


## pictures テーブル

| Column                | Type        | Options     |
| ------------------    | ------      | ----------- |
| title                 | string      | null: false |
| birthday              | references  | null: false, foreign_key: true |
| user                  | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :birthday
- belongs_to :color_paper


## color_papers テーブル

| Column                   | Type        | Options     |
| ------------------       | ------      | ----------- |
| birthday                 | references  | null: false, foreign_key: true |
| picture                  | references  | null: false, foreign_key: true |
| user                     | references  | null: false, foreign_key: true |
| question_management_id   | integer     | null: false |
| question_answer          | integer     | null: false |

### Association

- belongs_to :user
- belongs_to :birthday
- has_many :pictures
- has_many :comments


## comments テーブル

| Column                | Type        | Options     |
| ------------------    | ------      | ----------- |
| user                  | references  | null: false, foreign_key: true |
| birthday              | references  | null: false, foreign_key: true |
| sentence              | string      | null: false |

### Association

- belongs_to :user
- belongs_to :birthday
- belongs_to :color_paper









































