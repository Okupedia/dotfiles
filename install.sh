#!/bin/zsh

# 未定義な変数があったら途中で終了する
set -u

# 今のディレクトリ
# dotfilesディレクトリに移動する
BASEDIR=$(dirname $0)
cd $BASEDIR

# dotfilesディレクトリにある、ドットから始まり2文字以上の名前のファイルに対して
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done

#install
brew reinstall zsh-syntax-highlighting #コマンドのハイライト
brew install brew install zsh-autosuggestions #履歴に基づいてコマンド候補を入力

#プロンプト
brew tap sambadevi/powerlevel9k
brew install powerlevel9k