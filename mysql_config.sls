User aanmaken:
  - mysql_user.present:
    - name: laurent
    - password: wachtw00rd
    - host: localhost

Database aanmaken:
  mysql_database.present:
    - name: laurent_wordpress
    - connection_host: localhost
    - connection_user: root  
    - connection_pass:


rechten Opstellen:
  mysql_grant.present:
    - grant: all privileges
    - database: wordpress.*
    - user: laurent
    - host: localhost

wordpress databaseConfig:
  file.append:
    -name: /etc/wordpress/config-localhost.php
    -source: salt::/databaseMaken.conf
  















