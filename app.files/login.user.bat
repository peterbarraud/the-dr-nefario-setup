ECHO off

SET mysqldir=<path to mariadb.min>
SET username=<pokerj
SET password=pokerj07
SET dbname=db1

%mysqldir%\bin\mysql --user=%username% --password=%password% --database=%dbname%