database:
  pkg.installed:
     - pkgs:
       - mariadb 
       - mariadb-server

mariadb:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: mariadb
