## やったこと
- terraformのinstall
  - tfenvをinstallする前にやるとエラーになる
- tfenvのinstall
  - v0.15.4の最新
- awsのconfigureを登録

## 確認
- applyするたびにregion聞かれるので、providerで指定した
  - [AWSでTerraformに入門 \| DevelopersIO](https://dev.classmethod.jp/articles/terraform-getting-started-with-aws/)
- 3.7.1のセキュリティグループの作成の部分が資料通りだとうまくいかない
  - SGのattributesが足りない
  - バージョンの関係？

## メモ
- リソースの再作成が発生する場合があるので、いきなりapplyをやるのではなく、planで見る必要がある
- 変数の指定方法は色々ある
  - variable
  - locals
  - コマンド打つときに定義
- tsstateファイルはリソースの状態が保存されている
  - 実行する度に差分をチェックしている
- 本と同じバージョンで実行すべきだった
