
# 日付を取得
$NowDate = Get-Date -Format "yyyyMMdd_HHmmss"
# 削除したいファイルの基準時間設定
$DeleteTime = "-14400"       ### 10日･
 
 
# 対象フォルダのアイテム取得
Get-ChildItem C:\Windows |
# 作成時間が$DeleteTimeの値を過ぎたファイルを抽出
Where-Object {
$_.CreationTime -lt (Get-Date).AddMinutes($DeleteTime)
} |
# 対象ファイルを絶対パスに変換し削除を実行
foreach {
    Remove-Item -Recurse -Force $_.FullName
}

exit
