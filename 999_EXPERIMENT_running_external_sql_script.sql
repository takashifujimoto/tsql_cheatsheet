
--Running External File
--EXEC xp_cmdshell  'sqlcmd -S ' + @DBServerName + ' -d  ' + @DBName + ' -i ' + @FilePathName

--prerequisite
--need this on ubuntu
--sudo apt-get install unixodbc-dev unixodbc-bin unixodbc
-- this did not fix it

--example
DECLARE @DBServerName VARCHAR(50)
SET @DBServerName = 'localhost'

DECLARE @DBName VARCHAR(50)
SET @DBName = 'tempdb'

DECLARE @FilePathName VARCHAR(256)
SET @FilePathName = '/Tables/Shops.sql'

--NOT WORKING
--EXEC xp_cmdshell  'sqlcmd -S ' + @DBServerName + ' -d  ' + @DBName + ' -i ' + @FilePathName
--EXEC xp_cmdshell sqlcmd -S + @DBServerName + ' -d  ' + @DBName + ' -i ' + @FilePathName
--select name, type from sysobjects where (type = 'P')

use master
GO

DECLARE @sql varchar(max) = 'xp_cmdshell sqlcmd -S localhost\testdb -i ''/code/STables/Shops.sql'''
EXEC @sql


--source: https://stackoverflow.com/questions/241925/is-it-possible-to-execute-a-text-file-from-sql-query


--SQL Serverでプロシージャなどを作っていると、たまにOSコマンドを実行できたらなぁ．．．と思うことがあります。
--そんな時に使うのがxp_cmdshellという拡張プロシージャです。
--xp_cmdshellの使い方は非常に簡単です。

--xp_cmdshell 'コマンド文字列'

--ただし、この拡張プロシージャはmasterデータベースにしか存在しないため、実際に使用する時はデータベース名で修飾する必要があります。
--さらにプロシージャ内で使用する場合は頭にEXECも必要です。
--source: https://ameblo.jp/archive-redo-blog/entry-10034795103.html