# Some useful (meaning used often) commands
## Show list of databases
```
show databases;
```
## Go to a database
```
use <database name>;
```
## Show tables in a database
```
show tables;
```
## Create table
```
create table (
    id tinyint unsigned NOT NULL AUTO_INCREMENT,
    someforeignkeyid int NOT NUll,
    <other fields>,
    PRIMARY KEY (id),
    FOREIGN KEY (someforeignkeyid) REFERENCES `<reference table` (`reference field`)
);
```
## Table description
```
desc <table name>;
```
## Show create table statement
```
show create table <table name>;
```
## Show fields in a table
```
show columns from <table name>;
```
## insert multiple records into table in one statement
```
insert into <table name> (field name list) values (field value list), (field value list)...;
```
## Execute .sql file from the bash
`<relative path to mysql bin folder>/mysql -u <user name> -p<password> <database name> < sqlfilename.sql`

aa
