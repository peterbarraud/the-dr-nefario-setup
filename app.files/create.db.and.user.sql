create user if not exists '<user name>'@'localhost' identified by '<password>'; 
create database if not exists <database name>; 
grant all on <database name>.* to '<user name>'@'localhost'; 