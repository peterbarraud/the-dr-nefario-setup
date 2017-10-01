ECHO off

SET mysqldir=<path to mariadb.min>
SET username=<user name>
SET password=<password>
SET dbname=<database name>

%mysqldir%\bin\mysql --user=%username% --password=%password% --database=%dbname%