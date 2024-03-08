# Project: 0x0F Load Balancer

## Table of Contents

- [Project Description](#project-description)
- [Concepts](#concepts)
- [Tasks](#tasks)
  - [0. Double the number of webservers](#0-double-the-number-of-webservers)
  - [1. Install your load balancer](#1-install-your-load-balancer)

---

## Project Description

This project involves configuring web-02 to be identical to web-01, doubling the number of web servers, and improving the web stack for redundancy. The servers involved are:

- gc-[STUDENT_ID]-web-01-XXXXXXXXXX
- gc-[STUDENT_ID]-web-02-XXXXXXXXXX
- gc-[STUDENT_ID]-lb-01-XXXXXXXXXX

The goal is to have redundancy for web servers, enabling the infrastructure to handle more traffic and become more reliable. Bash scripts will be used to automate the configuration of new Ubuntu servers.

---

## Concepts

- Load balancer
- Web stack debugging

---

## Tasks

### 0. Double the number of webservers

**Requirements:**

- Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02).
- The custom HTTP header's name must be `X-Served-By`.
- The value of the custom HTTP header must be the hostname of the server Nginx is running on.
- Write `0-custom_http_response_header` to configure a brand new Ubuntu machine to meet the requirements.

```bash
sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
sylvain@ubuntu$
```

### 1. Install your load balancer

**Requirements:**

- Install and configure HAproxy on your lb-01 server.
- Configure HAproxy to send traffic to web-01 and web-02.
- Distribute requests using a round-robin algorithm.
- Ensure that HAproxy can be managed via an init script.
- Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.

```bash
sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes

sylvain@ubuntu$
```

---

Copyright © 2024 ALX, All rights reserved.
