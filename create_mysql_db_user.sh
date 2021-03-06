#MYSQL_WYUN_DB, shell script set up a mysql database and its user
MYSQL_ROOT_PW=coova
MYSQL_WYUN_DB=commons
MYSQL_WYUN_USER=commons
MYSQL_WYUN_PW=passwd
mysql -uroot -p$MYSQL_ROOT_PW -e "CREATE DATABASE $MYSQL_WYUN_DB"
mysql -uroot -p$MYSQL_ROOT_PW -e "GRANT ALL PRIVILEGES ON $MYSQL_WYUN_DB.* TO '$MYSQL_WYUN_USER'@'localhost' IDENTIFIED BY '$MYSQL_WYUN_PW';"
mysql -uroot -p$MYSQL_ROOT_PW -e "GRANT ALL PRIVILEGES ON $MYSQL_WYUN_DB.* TO '$MYSQL_WYUN_USER'@'%' IDENTIFIED BY '$MYSQL_WYUN_PW';"
mysql -uroot -p$MYSQL_ROOT_PW -e "GRANT ALL PRIVILEGES ON $MYSQL_WYUN_DB.* TO '$MYSQL_WYUN_USER'@'0.0.0.0' IDENTIFIED BY '$MYSQL_WYUN_PW';"
mysql -uroot -p$MYSQL_ROOT_PW -e "GRANT ALL PRIVILEGES ON $MYSQL_WYUN_DB.* TO '$MYSQL_WYUN_USER'@'127.0.0.1' IDENTIFIED BY '$MYSQL_WYUN_PW';"

#To view database with utf8 characters
mysql -u user -p0ffs4t? wlsp --default-character-set=utf8
