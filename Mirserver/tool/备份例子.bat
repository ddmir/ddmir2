@md 测试备份目录
@set CUR=%cd%
@pushd %~dp0
@call sqlbakup.bat -h127.0.0.1 -P3306 -uroot -p123456 god_db acc "%CUR%\测试备份目录\2022-00-00_00-00_acc.sql"
@popd
@pushd %~dp0
@call sqlbakup.bat -h127.0.0.1 -P3306 -uroot -p123456 god_db chr "%CUR%\测试备份目录\2022-00-00_00-00_chr.sql"
@popd
pause