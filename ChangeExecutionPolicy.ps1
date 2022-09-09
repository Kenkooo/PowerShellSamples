#一時的に実行ポリシーの設定を変更
# Restricted:スクリプトの実行禁止
# AllSigned:署名付きローカルスクリプトのみ実行可能
# RemoteSigned:ローカルの署名無しとインターネット上の署名付きスクリプトを実行可能
# Unrestricted:全てのスクリプトを実行可能
Set-ExecutionPolicy RemoteSigned -Scope Process


