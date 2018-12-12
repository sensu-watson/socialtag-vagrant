# MissionForest開発環境

## 使い方
1. virtualboxとvagrantをインストールしておく．
2. vagrant upを実行
3. vagrant sshを実行
4. "sudo /usr/local/virtuoso/bin/virtuoso-t -f -c /usr/local/virtuoso/var/lib/virtuoso/db/virtuoso.ini >/dev/null 2>/dev/null &"を実行(virtuoso)
5. 後は実装

## venv
cd /home/vagrant/lod-annotate
source venv/bin/activate
でアクティベート
