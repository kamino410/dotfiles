# kamino410 dotfiles

under construction ...

* NeoVim
  * Shougo/dein.vim
  * rhysd/vim-clang-format
  * justmao945/vim-clang
  * scrooloose/nerdtree
  * tomasr/molokai
  * vim-airline/vim-airline
  * rhysd/accelerated-jk
  * rust-lang/rust.vim
* zsh

# vim shortcuts

## row

i : insert, n : normal, \+ : second command

|char|lower|upper|
|----|----|----|
|`e`|i : 単語の末尾へ移動|i : 空白区切りで単語の末尾へ移動|

## ctrl

|char|ctrl-lower|
|----|----|
|`e`|n : Treeへカーソル移動/Treeを閉じる|
|`w`|+`h,j,k,l` n : panel移動<br>+`c` n : 現在のpanelを削除<br>+`o` n : 現在のpanel以外を削除<br>+`x` n : 現在のpanelと次のpanelを入れ替える<br>+`+` n : 現在のpanelを1文字分高くする<br>+`-` n : 現在のpanelを1文字分低くする<br>+`>` n : 現在のpanelを1文字分広くする<br>+`<` n : 現在のpanelを1文字分狭くする|

## on tree view

|char|lower|upper|
|----|----|----|
|`Enter`<br>`o`|ファイルを開く<br>ディレクトリを開閉|ディレクトリを再帰的に開く|
|`p`|親ディレクトリへ移動|ルートディレクトリへ移動|
|`k`,`j`|上下移動|ディレクトリ内の一番上・一番下へ移動|
|`x`|親ディレクトリを閉じる|ディレクトリを再帰的に閉じる|
|`i`|水平分割して開く||
|`s`|垂直分割して開く||
|`t`|新規タブで開く|新規タブで開き移動はしない|
|`g`|+`o,i,s` プレビュー（カーソルはtreeのまま）||
|`e`|新規treeを開く||
|`c`||選択したディレクトリをルートに|
|`u`|ルートを1つ上の階層に|折りたたまずにルートを1つ上の階層に|

|`m`|メニューを開く（touch/mkdir/rmなどができる）||
|`i`||隠しファイルの表示・非表示|
|`f`||ファイルの表示・非表示|
