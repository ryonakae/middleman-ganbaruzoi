# Boilerplate of Middleman.

<img src="http://f.cl.ly/items/00201Z12410h1W2N0r2j/%E5%86%99%E7%9C%9F%202014-06-07%2022%2011%2032_1.png" width="450" alt="今日も一日がんばるぞい！">


## Ready:

* Slim
* Sass(SASS) + Compass
* CoffeeScript
* LiveReload


## Require:

* Ruby
* Bundler



## Develop

Move your working directory. And type command below.

    $ git clone https://github.com/ryonakae/middleman-boilerplate.git

    $ bundle install

    $ middleman server


## Build

    $ middleman build


## Deploy

    $ middleman deploy

At default, deploy branch is `gh-pages`.  
You can change branch at `config.rb`.


## Change Log

### 2014-08-07

* [KKE](https://github.com/ryonakae/kke)のアップデートに合わせてCompass依存しないSASSファイルの書き方にした
  *  `style.sass`でCompassのImportはしてるけど、依存してない
  * Compass使ってもいいし、必須ではないみたいな感じにした
  * KKEで使用している変数やmixin、グリッドシステムをそのまま持ってきた  
* JavaScriptを`body`の一番最後に移動
* FacebookやGoogle Analytics用のJavaScriptを追加
* `head`内のタグを整理
* Autoprefixerを追加

### 2014-07-30

* ディレクトリ構造シンプルにした
* SASSを整理+必要最低限にした
* グリッドシステム追加した
* Modify README.md

### 2014-06-17

* Modify README.md

### 2014-06-08

* Modify README.md

### 2014-06-02

* Initial Release


## Author

[RYO NAKAE](http://brdr.jp)