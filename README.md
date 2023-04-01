# 新人研修 3 回目用デバッグアプリ

下記ブランチ、全 6 問のエラーが含まれています。

```
$git branch
* main
  1
  2
  3
  4
  5
```

### Clone するとき

```
git clone https://github.com/trainer-team/trainig3_bookers2.git
$ cd trainig3_bookers2
$ git branch -r | grep -v "\->" | grep -v main | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
$ git checkout ~~~
```
