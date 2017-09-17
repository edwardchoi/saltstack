php-pkgs:
   pkg.installed:
    - pkgs:
      - php
      - php-pear
      - php-mysql
      - php-fpm 
      - php-gd
      - php-xml

php-fpm:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: php-fpm
    - watch:
      - file: /etc/php-fpm.d/www.conf

/etc/php-fpm.d/www.conf:
  file.managed:
    - source: salt://web/php/conf/www.conf
    - user: root
    - group: root
    - mode: 640
