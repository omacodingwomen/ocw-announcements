
## 11/29/2016 notes

### ./bin/setup and bundle install requires a qmake update

To get `bundle install` to work, 
do these two things: 
1. `sudo apt-get update` then 
2. `sudo apt-get install libqt4-dev pkg-config` 

after that `bundle install` worked for me.

### Betty solved the postgresql problem.
https://gist.github.com/amolkhanorkar/8706915

 ```sudo service postgresql start
sudo su - postgres
psql
UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
DROP DATABASE template1;
CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';
UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';
\c template1
VACUUM FREEZE;
\q
exit
```
1. See commit messages for rails cli commands.
1. For changing the root route:  http://docs.railsbridge.org/intro-to-rails/setting_the_default_page