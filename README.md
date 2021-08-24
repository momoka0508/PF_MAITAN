# IT用語で迷子にならない単語帳　【マイタン】
<div align="center">
  <img width="250" height="250" alt="スクリーンショット 2021-07-12 9 24 30" src="https://user-images.githubusercontent.com/82991184/129829229-cfe28aa7-1de5-409f-8613-0387a0886ab8.png" title = "マイタン">
</div>

## サイト概要
学習モード・検索モード・復習モードを搭載したIT用語学習ツールです。学習モードでは、単語帳形式でランダムで表示されるIT用語と意味を確認できます。検索モードでは、咄嗟にIT用語を確認したい時にIT用語とその意味を確認する事が出来ます。復習モードでは、ブックマークした用語を一覧で確認し、学習モードで覚えきれなかった用語を確認する事が出来ます。

### サイトテーマ
IT用語学習ツール

### テーマを選んだ理由
プログラミングを学習していると、分からないIT用語が頻発するので学習が前に進まないというのは、初学者にとってよくある事だと思います。また晴れてエンジニアになった後も、先輩エンジニアとの会話でIT用語が分からず、なかなか話題についていけないという事も発生しうる事象ではないかと思います。世の中には英単語を覚えるツール等は溢れていますが、IT用語一覧を列挙したサイトはありますが、学習に焦点を当てたツールは非常に少ないです。そこで、プログラミング初学者がIT用語で困らない為に、学習・検索をまとめて出来るツールを作成したいと思い、こちらのテーマを選びました。

### ターゲットユーザ
プログラミングの初学者、IT現場で働き始めた人

### 主な利用シーン
- IT用語を学べる
- IT用語が分からない時に検索できる
- 登録の無いIT用語を新規登録・編集することができる
- お気に入り機能で、覚えるまで繰り返し確認できる

## 設計書
- UIフロー（user）</br>
<details>
  <summary>クリックして下さい</summary>

  ![ui_flows_ec_MAITAN-1 2](https://user-images.githubusercontent.com/82991184/129826876-0b282bee-3cf4-4187-9ca4-7671f22e9556.jpg)

</details>

- UIフロー（admin）</br>
<details>
  <summary>クリックして下さい</summary>

  ![ui_flows_admin_MAITAN](https://user-images.githubusercontent.com/82991184/130547529-3800ba6b-33b4-48b7-af96-e29ac6121c97.jpg)

</details>

- ER図</br>
<details>
  <summary>クリックして下さい</summary>

  ![ER_MAITAN](https://user-images.githubusercontent.com/82991184/129827543-f0a2a366-f9a0-485d-a653-aef77c1b27b2.jpg)

</details>

- テーブル定義書</br>
<details>
  <summary>クリックして下さい</summary>

  ![テーブル定義書_MAITAN xlsx - テーブル定義-1](https://user-images.githubusercontent.com/82991184/129828971-3755e62e-8816-43bc-b9d2-76c22a648db2.jpg)

</details>

- アプリケーション詳細設計</br>
<details>
  <summary>クリックして下さい</summary>

  ![アプリケーション詳細設計_MAITAN xlsx - ルーティング-1](https://user-images.githubusercontent.com/82991184/129828807-d04075f9-0e11-4666-a036-e3e01de4f995.jpg)

</details>

## チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/1GjMulo1iab1MpxH2551Z4sC5q0FF4iNsvDAxKa3fgxk/edit?usp=sharing

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9