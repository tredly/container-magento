# This file creates the database for Magento and sets the root password.
# It is recommended that you do not keep passwords in source control, use Tredly storage instead.
# This file and passwords within it is for example purposes only.

CREATE DATABASE IF NOT EXISTS magento;
UPDATE mysql.user SET Password = PASSWORD('RootPassword') WHERE User = 'root';
grant all privileges on magento.* to 'root'@'%' identified by 'RootPassword' with grant option;
FLUSH PRIVILEGES;