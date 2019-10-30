MariaDB [cake]> SHOW VARIABLES where Variable_name like 'char%';
+--------------------------+--------------------------------+
| Variable_name            | Value                          |
+--------------------------+--------------------------------+
| character_set_client     | cp866                          |
| character_set_connection | cp866                          |
| character_set_database   | latin1                         |
| character_set_filesystem | binary                         |
| character_set_results    | cp866                          |
| character_set_server     | latin1                         |
| character_set_system     | utf8                           |
| character_sets_dir       | C:\xampp\mysql\share\charsets\ |
+--------------------------+--------------------------------+
8 rows in set (0.00 sec)

было
## UTF 8 Settings
#init-connect=\'SET NAMES utf8\'
#collation_server=utf8_unicode_ci
#character_set_server=utf8
#skip-character-set-client-handshake
#character_sets-dir="C:/xampp/mysql/share/charsets"

стало
## UTF 8 Settings
#init-connect=\'SET NAMES utf8\'
collation_server=utf8_unicode_ci
character_set_server=utf8
skip-character-set-client-handshake
#character_sets-dir="C:/xampp/mysql/share/charsets"


MariaDB [(none)]> SHOW VARIABLES where Variable_name like 'char%';
+--------------------------+--------------------------------+
| Variable_name            | Value                          |
+--------------------------+--------------------------------+
| character_set_client     | utf8                           |
| character_set_connection | utf8                           |
| character_set_database   | utf8                           |
| character_set_filesystem | binary                         |
| character_set_results    | utf8                           |
| character_set_server     | utf8                           |
| character_set_system     | utf8                           |
| character_sets_dir       | C:\xampp\mysql\share\charsets\ |
+--------------------------+--------------------------------+
8 rows in set (0.00 sec)