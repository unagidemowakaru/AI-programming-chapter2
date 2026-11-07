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
> ### 💡 練習課題：占いページを作ってみよう
> 次の文章をAIにお願いして占いページを作ろう
> 
> **📁 ディレクトリ構成**
> - `html/samples/chapter2` 配下に `js`・`images` ディレクトリと `index.php` を作成。
> - `js`・`images` にはディレクトリ内が見えないように **0バイトの `index.html`** を置く。
> - css定義は`html/css/style.css` を流用して追記し `index.php` から読み込む。
> - `images/` ディレクトリにこの章のタイトル画像（`.png`）を作成して `index.php` から読み込む。
> - タイトル画像は占いしている感じがわかるクールな女の子のイラスト。
>   - **※ 画像作成は必須です。**
> 