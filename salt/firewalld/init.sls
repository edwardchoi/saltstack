firewalld:
  firewalld.present:
    - name: public
    - services:
      - dhcpv6-client
      - http
      - https
      - ssh
    - ports:
      - 4505-4506/tcp
      - 2288/tcp
