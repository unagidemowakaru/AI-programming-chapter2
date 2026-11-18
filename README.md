# AI-programming-web
AIプログラミング入門 Web編
## 1. Webサーバーの準備
- AlmaLinux 10の指定
- git,git-lfs,sudo,tar,wgetのインストール
- httpd(Apache HTTP Server)のインストール
- codespaceユーザを作成
- codespaceユーザがsudo可能に設定
- ホームディレクトリを/workspaces/AI-programming-webに設定
- bashのコマンドプロンプトを短く
- httpd(Apache HTTP Server)を起動

> [!NOTE]
> ### ⚙️ GitHub Codespaces設定ファイルに追加
> - 「> Preferences: Open User Settings (JSON)」コマンドを実行
> ```json
> {
>  "github.copilot.chat.tools.terminal.autoApprove": true,
>  "github.copilot.chat.edits.autoAccept": true,
>  "github.copilot.chat.terminal.executeCommand": true
> }
> ```

> [!TIP]
> ### 💡 練習課題：ホームページを作ってみよう
> 次の文章をAIにお願いしてトップページを作ろう
> 
> **📁 ディレクトリ構成**
> - `html/` 配下に `css`・`js`・`images` ディレクトリと `index.html` を作成。
> - `css`・`js`・`images` にはディレクトリ内が見えないように **0バイトの `index.html`** を置く。
> - `css/style.css` を作成し `index.html` から読み込む。
> - `images/` ディレクトリにファビコン（`.ico`）を作成して `index.html` から読み込む。
> - `images/` ディレクトリにタイトル画像（`.png`）を作成して `index.html` から読み込む。
> - タイトル画像はAIプログラミングしている感じがわかるクールなコンピュータのイラスト。
>   - **※ 画像作成は必須です。**
> 
> **📄 index.html 仕様**
> - **レイアウト**: `header` / `main` / `footer` の3領域構成、全体を中央寄せ
> - **ファビコン**: `.ico` ファイルを `index.html` に組み込み
> - **タイトル**: 「AIプログラミング Web編」
> - **header**: 
>   - タイトル画像、タイトル、メニューを横並びに表示
>   - メニュー文字のクリックでリンク
>     - メニュー1: 表示名は「ホーム」、リンクはしない
>     - メニュー2: 表示名は「見本ページ」、リンク先は html/samples を開く
>     - メニュー3: 表示名は「練習ページ」、リンク先は html/practices を開く
> - **パクズリスト**: トップからの現在位置を表示
> - **main**: サイト説明文を表示
>   > 「このページはAIプログラミングを学習するためのサンプルで、AIにWebアプリを作ってもらいつつ、HTMLやCSSやJavaScriptやPHPというプログラミング言語が読めるようになるための説明やPostgreSQLというデーターベースを活用していきます。」
> - **footer**: 
>   - 「https://www.youtube.com/channel/UC5GBfnmCJLrwaxQsLjBaAJA 」への**新規タブが開く**リンクを「©️プログラミング入門」と表示
> 
> **📄 /samples/index.html 仕様**
> - .dummy削除
> - トップのindex.htmlと基本的に同じ仕様とデザイン
> - メニュー1: 表示名は「ホーム」、トップの/index.htmlへリンクする
>
> **📄 /practices/index.html 仕様**
> - .dummy削除しない
> - index.html作成しない
>
> **📱 レスポンシブ対応**
> - 画面幅が狭い（スマホ等）場合はハンバーガーメニューを表示してメニューを隠す。
> 
> **⚙️ その他**
> - コマンド実行時の確認プロンプトをすべて省略し、直接実行してください。
> - 全ての作成と実行が完了したら、最後に『終了しました』または『失敗しました』と結果を表示してください。
> - サーバーの構築・起動は不要。




## 2. 占いページを作成してみる
- php(8.3)とphp-fpmのインストール
- php-fpmを起動

> [!TIP]
> ### 💡 練習課題：占いページ1を作ってみよう
> 次の文章をAIにお願いして占いページ2を作ろう
> 
> **📁 ディレクトリ構成**
> - `html/ch2` 配下に `js`・`images` ディレクトリを作成。
> - `js`・`images` にはディレクトリ内が見えないように **0バイトの `index.html`** を置く。
> - css定義は`html/css/style.css` を流用して追記。
> - `html/ch2/images/` ディレクトリにこの章のタイトル画像（`title.png`）を作成。
> - `html/ch2/images/title.png` ファイルを誰もが参照可能できるようにモードを変更。
> - 章のタイトル画像は占いしている感じがわかるクールな女子のイラスト。
>   - **※ 画像作成は必須です。**
> - `html/ch2/images/title.png` ファイルが正しく配置されていることを確認。
>
> **📁 占いページ1仕様**
> - `html/ch2/samples/index.php` に占いを表示する。
> - **レイアウト**: `main` / `footer` の2領域構成、全体を中央寄せ
> - **ファビコン**: `.ico` ファイルを `html/ch2/samples/index.php` に組み込み
> - **タイトル**: 「占いページ バージョン1」
> - **main**: 占い結果を表示
>   - 占いの構成は、章のタイトル画像を正しく読み込み、占い結果の文字と占いの説明文章
>   - 画像パス：`<img src="../images/title.png" alt="占い" class="fortune-image">` で `html/ch2/images/title.png` を読み込む
> - **footer**: 
>   - 「https://www.youtube.com/channel/UC5GBfnmCJLrwaxQsLjBaAJA 」への**新規タブが開く**リンクを「©️プログラミング入門」と表示
>
> **📄 html/index.html 変更・追記の仕様**
> - **header**: 
>   - メニューの項目を追加
>     - メニュー4: 表示名は「2章へ」、リンク先は ch2/samples/index.php を開く
>
> - 注意点
>   - Apache HTTP Serverは既に起動されているのでサーバー起動は不要です
<!-- **📁 占いページ1仕様終了** -->

> [!TIP]
> ### 💡 練習課題：占いページ2を作ってみよう
> 次の文章をAIにお願いして占いページ2を作ろう
> **📁 占いページ2の仕様**
> - `html/ch2/samples/index2.php` に占いを表示する。
> - **レイアウト**: `main` / `footer` の2領域構成、全体を中央寄せ
> - **ファビコン**: `.ico` ファイルを `index2.php` に組み込み
> - **タイトル**: 「占いページ バージョン2」
> - **main**: 占い結果を表示の構成
>   - 占い結果の画像を表示、最初は前に作成した章のタイトル画像
>   - 占い結果の文字表示、最初は何も表示しない
>   - 占いボタン
>     - 占いボタンをクリックしたら、ボタンはクリックできないように変更
>     - 占い中(3秒)は結果文字の上にスピナーを表示
>     - 占い結果が出たら、スピー名を消して、章のタイトル画像を結果の画像に置き換えて、結果の文字を表示、ボタンを有効へ戻す
>   - 占いの構成は、章のタイトル画像を正しく読み込み、占い結果の文字と占いの説明文章
>   - 画像パス：`<img src="../images/title.png" alt="占い" class="fortune-image">` で `html/ch2/images/title.png` を読み込む
> - **footer**: 
>   - 「https://www.youtube.com/channel/UC5GBfnmCJLrwaxQsLjBaAJA 」への**新規タブが開く**リンクを「©️プログラミング入門」と表示
> - 
> **📄 html/index.html 変更・追記の仕様**
> - **header**: 
>   - メニューの項目を追加
>     - メニュー4: 表示名は「2章へ」、リンク先は ch2/samples/index2.php を開くように変更
<!-- **📁 占いページ2の仕様終了** -->

> [!TIP]
> ### 💡 練習課題：占い紹介ページを作ってみよう
> 次の文章をAIにお願いして占い紹介ページを作ろう
> **📁 2章ページ仕様**
> - `html/ch2/index.php` に2章の紹介を表示する。
> - **レイアウト**: `header` / `main` / `footer` の3領域構成、全体を中央寄せ
> - **ファビコン**: `.ico` ファイルを `index.php` に組み込み
> - **タイトル**: 「AIプログラミング 2章」
> - **header**: 
>   - タイトル画像、タイトル、メニューを横並びに表示
>   - メニュー文字のクリックでリンク
>     - メニュー1: 表示名は「ホーム」、リンク先は html/ を開く
>     - メニュー2: 表示名は「2章ページ」、リンクはしない
> - **パクズリスト**: トップからの現在位置を表示
> - **main**: サイト説明文を表示
>   > 章のタイトル画像を正しく読み込み
>   > 「このページは占いを表示するためのサンプルで、AIに占いのWebアプリを作ってもらいます。」
>   > 占いページをリスト表示する
>   > - 1つ目の占い(`html/ch2/samples/index.php`)へのリンク、リンクは別ウィンドウ(別タブ)で開く
>   > - 2つ目の占い(`html/ch2/samples/index2.php`)へのリンク、リンクは別ウィンドウ(別タブ)で開く
> - **footer**: 
>   - 「https://www.youtube.com/channel/UC5GBfnmCJLrwaxQsLjBaAJA 」への**新規タブが開く**リンクを「©️プログラミング入門」と表示
>
> **📄 html/index.html 変更・追記の仕様**
> - **header**: 
>   - メニューの項目を追加
>     - メニュー4: 表示名は「2章へ」、リンク先は ch2/index.php を開く
> **📄 html/index.html 変更・追記の仕様**
> - **header**: 
>   - メニューの項目を追加
>     - メニュー4: 表示名は「2章へ」、リンク先は ch2/index.php を開く
<!--  **📁 2章ページ仕様終了** -->