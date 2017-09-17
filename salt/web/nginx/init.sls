nginx:
  pkg:
    - installed
  service.running:
    - enable: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/conf.d/open.os.sg.conf
      - file: /etc/nginx/conf.d/os.sg.conf
      - file: /etc/nginx/conf.d/sgandroid.com.conf

wwww-dir:
  file.directory:
   - user: root
   - group: root
   - mode: 755
   - makedirs: True
   - names:
     - /var/www/open.os.sg/logs
     - /var/www/open.os.sg/public_html
     - /var/www/os.sg/logs
     - /var/www/os.sg/public_html
     - /var/www/sgandroid.com/logs
     - /var/www/sgandroid.com/public_html

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://web/nginx/conf/nginx.conf
    - user: root
    - group: root
    - mode: 640

/etc/nginx/conf.d/open.os.sg.conf:
   file.managed:
    - source: salt://web/nginx/conf/open.os.sg.conf
    - user: root
    - group: root
    - mode: 640

/etc/nginx/conf.d/os.sg.conf:
   file.managed:
    - source: salt://web/nginx/conf/os.sg.conf
    - user: root
    - group: root
    - mode: 640

/etc/nginx/conf.d/sgandroid.com.conf:
   file.managed:
    - source: salt://web/nginx/conf/sgandroid.com.conf
    - user: root
    - group: root
    - mode: 640

