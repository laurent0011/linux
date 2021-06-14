
installeren Benodigdheden:
  pkg.installed:
    - pkgs:
      - wordpress
      - mysql-server



Configuratie Doorvoeren:
  file.append:
    - name: /etc/apache2/sites-available/wordpress.conf
    - source: salt::/wordpress.conf














