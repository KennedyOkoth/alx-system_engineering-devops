# Project: 0x10 HTTPS SSL

## Table of Contents

- [Project Description](#project-description)
- [Concepts](#concepts)
- [Tasks](#tasks)
  - [0. World wide web](#0-world-wide-web)
  - [1. HAproxy SSL termination](#1-haproxy-ssl-termination)

---

## Project Description

This project focuses on implementing HTTPS SSL and SSL termination using HAProxy. The project covers configuring the domain zone, adding subdomains, and handling SSL termination on the load balancer. The goal is to understand HTTPS SSL, its roles, and the purpose of encrypting traffic.

---

## Concepts

- HTTPS SSL
- SSL termination
- DNS
- Web stack debugging

---

## Tasks

### 0. World wide web

**Requirements:**

- Configure the domain zone so that the subdomain www points to your load-balancer IP (lb-01).
- Add other subdomains: lb-01, web-01, and web-02.
- Write a Bash script that displays information about subdomains.

```bash
sylvain@ubuntu$ ./0-world_wide_web holberton.online
The subdomain www is a A record and points to 54.210.47.110
The subdomain lb-01 is a A record and points to 54.210.47.110
The subdomain web-01 is a A record and points to 34.198.248.145
The subdomain web-02 is a A record and points to 54.89.38.100
sylvain@ubuntu$ ./0-world_wide_web holberton.online web-02
The subdomain web-02 is a A record and points to 54.89.38.100
```

### 1. HAproxy SSL termination

**Requirements:**

- HAProxy must listen on port TCP 443.
- HAProxy must accept SSL traffic and serve encrypted traffic that returns the / of your web server.
- The page returned must contain "Holberton School."
- Share your HAProxy config as an answer file (/etc/haproxy/haproxy.cfg).

```bash
sylvain@ubuntu$ curl -sI https://www.holberton.online
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 01:52:04 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
sylvain@ubuntu$ curl https://www.holberton.online
Holberton School for the win!
```

---

Copyright © 2024 ALX, All rights reserved.