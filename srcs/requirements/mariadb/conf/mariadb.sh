service mariadb start
mariadb --execute="CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mariadb --execute="CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mariadb --execute="GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mariadb --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mariadb --execute="FLUSH PRIVILEGES;"