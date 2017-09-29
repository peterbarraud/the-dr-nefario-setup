# The Dr. Nefario setup
Why this name?

In [Despicable Me 2](https://www.youtube.com/watch?v=UsKSjKrIEq8), Dr. Nefario packs up ALL his work in **One Small Case**. Always facisnated me.

So that's what this is. A setup for:
- `MariaDB`
- `PHP`
- `DataObjectLair`

Just like one of those `XAMP / WAMP`. Just a lot lighter and simpler.
This is a super-simple development environment setup. No bells and whistles.

## MariaDB
This is a barebone MariaDB setup. Again, just stripped down to the bare minimum.
### Start MariaDB
1. Navigate to `mariadb.min`
2. Double-click `start.db.bat`
MariaDB starts on port 
### Log into MariaDB as Root
1. Double-click `login.root.bat`
Another `cmd` window open MariaDB
### Create user and db
In the root login window, execute the following commands after putting in the `user name`, `password` and `database name`:
```
create user if not exists '<user name>'@'localhost' identified by '<password>'; 
create database if not exists <database name>; 
grant all on <database name>.* to '<user name>'@'localhost'; 

```
### Login user
1. Navigate to the `app.files` folder.
2. Copy `login.user.bat` to your project folder
3. Open the file in a *text* editor
4. Change the following values at the top of the file:
- **mysqldir**: *Absolute* or *relative path* to `mariadb.min` folder

**Note**: The `mysqldir` must include the `mariadb.min` folder. Maybe like `..\the-dr-nefario-setup\mariadb.min`
- **username**, **password**, **dbname**: User name, password and database name set when running the Create user and db [commands above](#create-user-and-db).
5. To login into `mariadb` with this user credentials, double-click `login.user-sample.bat` in your project folder.
## PHP
1. Clone the `Data object lair` into your project folder: `git@github.com:peterbarraud/data-object-lair.git`

Maybe run the following command to clone it into a named directory of your project folder:
```
git clone https://github.com/peterbarraud/data-object-lair.git services
```
2. Navigate to the `app.files` folder.
3. Copy `start.php.bat` to your project folder.
4. Open the file in a *text* editor
5. Change the following values at the top of the file:
- **phpport**: Unused port number
- **servicesdir**: Path to your services dir. The one where you cloned the `Object Lair`
- **phpdir**: *Absolute* or *relative path* to `php.min dir` folder

**Note**: The `mysqldir` must include the `mariadb.min` folder. Maybe like `..\the-dr-nefario-setup\php.min`

6. To run PHP, double-click the `start.php.bat` in your project folder.
7. To check if everything is working fine, open your web browser and go to this location:
```
http://localhost:<port number>/phpinfo.php
```
8. Ok now, to run your REST services, you're probably going to need a Framework. I use [SLIM](https://www.slimframework.com).

So the `rest.api.php` has the `include` for this Framework. You can use any service you want. You're going to have to make that change in the `rest.api.php`.

9. So if you are using SLIM, you're going to have to download and put it into the cloned `Object lair` directory. Actually, wherever you put it. You're going to have to make sure the include in the `rest.api.php` is correct.

As you build your Object Lair and REST services, you're probably best off with a neat Chrome plug-in like [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en) to try out things.
