
# ���t���擾
$NowDate = Get-Date -Format "yyyyMMdd_HHmmss"
# �폜�������t�@�C���̊���Ԑݒ�
$DeleteTime = "-14400"       ### 10日
 
 
# �Ώۃt�H���_�̃A�C�e���擾
Get-ChildItem F:\Lanscope_CSV |
# �쐬���Ԃ�$DeleteTime�̒l���߂����t�@�C���𒊏o
Where-Object {
$_.CreationTime -lt (Get-Date).AddMinutes($DeleteTime)
} |
# �Ώۃt�@�C�����΃p�X�ɕϊ����폜�����s
foreach {
    Remove-Item -Recurse -Force $_.FullName
}

exit